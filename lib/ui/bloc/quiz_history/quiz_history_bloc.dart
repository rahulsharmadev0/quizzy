import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quizzy/logic/models/quiz_outcome.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'quiz_history_event.dart';
part 'quiz_history_state.dart';

class QuizHistoryManager extends HydratedBloc<QuizHistoryEvent, QuizHistoryState> {
  QuizHistoryManager() : super(QuizHistoryInitial()) {
    on<SaveQuizResultEvent>(_onSaveQuizResult);
  }

  /// Handles the [SaveQuizResultEvent] event.
  void _onSaveQuizResult(SaveQuizResultEvent event, Emitter<QuizHistoryState> emit) {
    final currentState = state;
    if (currentState is QuizHistoryLoaded) {
      final updatedOutcomes = List<QuizOutcome>.from(currentState.quizOutcomes)
        ..add(event.quizOutcome);
      emit(QuizHistoryLoaded(updatedOutcomes));
    } else {
      emit(QuizHistoryLoaded([event.quizOutcome]));
    }
    emit(QuizHistorySaved());
  }

  @override
  QuizHistoryState? fromJson(Map<String, dynamic> json) {
    final outcomes = (json['quizOutcomes'] as List)
        .map((e) => QuizOutcome.fromJson(e))
        .toList();
    return QuizHistoryLoaded(outcomes);
  }

  @override
  Map<String, dynamic>? toJson(QuizHistoryState state) {
    if (state is QuizHistoryLoaded) {
      return {'quizOutcomes': state.quizOutcomes.map((e) => e.toJson()).toList()};
    }
    return null;
  }
}


