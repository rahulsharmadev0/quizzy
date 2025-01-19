import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:quizzy/logic/models/quiz.dart';
import 'package:quizzy/logic/models/quiz_outcome.dart';
import 'package:quizzy/ui/bloc/quiz_history_bloc.dart';
import 'package:quizzy/ui/bloc/quiz_timer_bloc.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';

class QuizManager extends Bloc<QuizEvent, QuizState> {
  final Quiz quiz;
  final QuizTimerManager timerManger;
  final QuizHistoryManager historyManager;
  final bool isAutoComplete;
  final bool canGoBack;
  StreamSubscription? _timerSubscription;

  QuizManager({
    required this.quiz,
    required this.timerManger,
    required this.historyManager,
    this.canGoBack = true,
    this.isAutoComplete = false,
  }) : super(QuizInitial()) {
    on<StartQuizEvent>(_onStartQuiz);
    on<NextQuestionEvent>(_onNextQuestion);
    on<PreviousQuestionEvent>(_onPreviousQuestion);
    on<SelectOptionEvent>(_onSelectOption);
    on<QuizCompleteEvent>(_onQuizComplete);
  }

  @override
  Future<void> close() {
    _timerSubscription?.cancel();
    return super.close();
  }

  /// Handles the [StartQuizEvent] event.
  void _onStartQuiz(StartQuizEvent event, Emitter<QuizState> emit) {
    if (state is QuizInProgress) return;

    timerManger.add(QuizTimerStarted(Duration(minutes: quiz.duration))); // Todo: set duration
    _timerSubscription ??= timerManger.stream.listen((timerState) {
      if (timerState is QuizTimerComplete) add(QuizCompleteEvent());
    });
    emit(QuizInProgress.initial(quiz.questionIds));
  }

  /// Handles the [NextQuestionEvent] event.
  void _onNextQuestion(NextQuestionEvent event, Emitter<QuizState> emit) {
    if (state is QuizComplete) return;
    final currentState = state as QuizInProgress;
    emit(currentState.nextQue());
  }

  /// Handles the [PreviousQuestionEvent] event.
  void _onPreviousQuestion(PreviousQuestionEvent event, Emitter<QuizState> emit) {
    if (!canGoBack) return;
    final currentState = state as QuizInProgress;
    if (currentState.isFirstQue) return;
    emit(currentState.prevQue());
  }

  /// Handles the [SelectOptionEvent] event.
  void _onSelectOption(SelectOptionEvent event, Emitter<QuizState> emit) {
    final currentState = state as QuizInProgress;
    emit(currentState.setAnswer(event.optionId));
    if (currentState.isLastQue && isAutoComplete) add(QuizCompleteEvent());
  }

  /// Handles the [QuizCompleteEvent] event.
  void _onQuizComplete(QuizCompleteEvent event, Emitter<QuizState> emit) {
    if (state is QuizComplete) return;
    final currentState = state as QuizInProgress;

    final initalTimer = Duration(minutes: quiz.duration);
    final quizComplete = currentState.createQuizComplete(
      quiz: quiz,
      takenTime: initalTimer - timerManger.currentDuration,
      matcher: (queId, optionId) => optionId == quiz.answersKeyPair[queId]!,
    );

    emit(quizComplete);

    // Save the quiz result
    historyManager.add(SaveQuizResultEvent(quizComplete));

    // should be called after creating QuizComplete state
    timerManger.add(QuizTimerStopped());
  }
}
