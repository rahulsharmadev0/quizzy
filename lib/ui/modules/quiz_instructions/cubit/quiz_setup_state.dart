part of 'quiz_setup_cubit.dart';

sealed class QuizSetupState extends Equatable {
  const QuizSetupState();
  @override
  List<Object> get props => [];
}

final class QuizSetupInitial extends QuizSetupState {
  final String quizId;
  const QuizSetupInitial(this.quizId);
}

final class QuizLoading extends QuizSetupState {}

final class QuizLoaded extends QuizSetupState {
  final Quiz quiz;
  const QuizLoaded(this.quiz);
  @override
  List<Object> get props => [quiz];
}

final class QuizError extends QuizSetupState {
  final String message;
  const QuizError(this.message);
  @override
  List<Object> get props => [message];
}
