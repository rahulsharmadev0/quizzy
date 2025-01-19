part of 'quiz_history_bloc.dart';

@immutable
sealed class QuizHistoryEvent {}

/// Event to save quiz results.
final class SaveQuizResultEvent extends QuizHistoryEvent {
  final QuizOutcome quizOutcome;
  SaveQuizResultEvent(this.quizOutcome);
}
