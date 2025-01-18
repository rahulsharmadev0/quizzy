import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:meta/meta.dart';
import 'package:quizzy/logic/models/quiz_outcome.dart';
import 'package:quizzy/ui/bloc/quiz_history_bloc.dart';
import 'package:quizzy/ui/bloc/quiz_timer_bloc.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';

class QuizManager extends Bloc<QuizEvent, QuizState> {
  final List<int> questionIdxs;
  final Map<int, int> answersKeyPair;
  final QuizTimerManager timerManger;
  final QuizHistoryManager historyManager;
  final bool isAutoComplete;
  final bool canGoBack;
  QuizManager({
    required this.questionIdxs,
    required this.answersKeyPair,
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

  void _onStartQuiz(StartQuizEvent event, Emitter<QuizState> emit) {
    if (state is QuizInProgress) return;
    timerManger.add(QuizTimerStarted(Duration(minutes: event.duration))); // Todo: set duration
    emit(QuizInProgress.initial(questionIdxs));
  }

  void _onNextQuestion(NextQuestionEvent event, Emitter<QuizState> emit) {
    if (state is QuizComplete) return;
    final currentState = state as QuizInProgress;
    emit(currentState.nextQue());
  }

  void _onPreviousQuestion(PreviousQuestionEvent event, Emitter<QuizState> emit) {
    if (!canGoBack) return;
    final currentState = state as QuizInProgress;
    if (currentState.isFirstQue) return;
    emit(currentState.prevQue());
  }

  void _onSelectOption(SelectOptionEvent event, Emitter<QuizState> emit) {
    final currentState = state as QuizInProgress;
    emit(currentState.setAnswer(event.optionId));
    if (currentState.isLastQue && isAutoComplete) add(QuizCompleteEvent());
  }

  void _onQuizComplete(QuizCompleteEvent event, Emitter<QuizState> emit) {
    if (state is QuizComplete) return;
    final currentState = state as QuizInProgress;

    final quizComplete = currentState.createQuizComplete(
      takenTime: timerManger.currentDuration,
      matcher: (queId, optionId) => optionId == answersKeyPair[queId]!,
    );

    emit(quizComplete);

    // Save the quiz result
    historyManager.add(SaveQuizResultEvent(quizComplete));

    // should be called after creating QuizComplete state
    timerManger.add(QuizTimerStopped());
  }
}
