part of 'quiz_data_manager_bloc.dart';

sealed class QuizDataEvent extends Equatable {
  const QuizDataEvent();
  @override
  List<Object> get props => [];
}

final class FetchQuizDataEvent extends QuizDataEvent {
  final String quizId;
  const FetchQuizDataEvent(this.quizId);
  @override
  List<Object> get props => [quizId];
}
