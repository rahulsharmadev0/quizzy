part of 'quiz_bloc.dart';

@immutable
sealed class QuizEvent {}

/// Event to start the quiz.
final class StartQuizEvent extends QuizEvent {
  final int duration;
  StartQuizEvent(this.duration);
}

/// Event to move to the next question.
final class NextQuestionEvent extends QuizEvent {}

/// Event to move to the previous question.
final class PreviousQuestionEvent extends QuizEvent {}

/// Event to select an option for the current question.
final class SelectOptionEvent extends QuizEvent {
  final int optionId;
  SelectOptionEvent(this.optionId);
}

/// Event to complete the quiz.
final class QuizCompleteEvent extends QuizEvent {}

// Not used in this project
class RestartEvent extends QuizEvent {}
