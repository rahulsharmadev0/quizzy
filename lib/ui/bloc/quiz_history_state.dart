part of 'quiz_history_bloc.dart';

@immutable
sealed class QuizHistoryState {}

/// Initial state of the quiz history.
final class QuizHistoryInitial extends QuizHistoryState {}

/// State when the quiz history is loaded.
final class QuizHistoryLoaded extends QuizHistoryState {
  final List<QuizOutcome> quizOutcomes;
  QuizHistoryLoaded(this.quizOutcomes);
}

/// State when a quiz result is saved.
final class QuizHistorySaved extends QuizHistoryState {}
