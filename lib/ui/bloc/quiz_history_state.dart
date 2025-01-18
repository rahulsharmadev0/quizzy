part of 'quiz_history_bloc.dart';

@immutable
sealed class QuizHistoryState {}

final class QuizHistoryInitial extends QuizHistoryState {}

final class QuizHistoryLoaded extends QuizHistoryState {
  final List<QuizOutcome> quizOutcomes;
  QuizHistoryLoaded(this.quizOutcomes);
}

// New state to handle saving quiz results
final class QuizHistorySaved extends QuizHistoryState {}
