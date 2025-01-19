part of 'quiz_bloc.dart';

@immutable
sealed class QuizEvent extends Equatable {
  const QuizEvent();

  @override
  List<Object> get props => [];
}

/// Event to start the quiz.
final class StartQuizEvent extends QuizEvent {}

/// Event to move to the next question.
final class NextQuestionEvent extends QuizEvent {}

/// Event to move to the previous question.
final class PreviousQuestionEvent extends QuizEvent {}

/// Event to select an option for the current question.
final class SelectOptionEvent extends QuizEvent {
  final int optionId;
  const SelectOptionEvent(this.optionId);

  @override
  List<Object> get props => [optionId];
}

/// Event to complete the quiz.
final class QuizCompleteEvent extends QuizEvent {
  const QuizCompleteEvent();
}

// Not used in this project
class RestartEvent extends QuizEvent {
  const RestartEvent();
}
