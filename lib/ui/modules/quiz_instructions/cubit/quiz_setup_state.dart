part of 'quiz_setup_cubit.dart';

/// Base state class for QuizSetupCubit
sealed class QuizSetupState extends Equatable {
  const QuizSetupState();
  @override
  List<Object> get props => [];
}

/// Initial state when the quiz setup starts
final class QuizSetupInitial extends QuizSetupState {
  final String quizId;
  const QuizSetupInitial(this.quizId);
}

/// State when the quiz is loading
final class QuizLoading extends QuizSetupState {}

/// State when the quiz has been successfully loaded
final class QuizLoaded extends QuizSetupState {
  final Quiz quiz;
  const QuizLoaded(this.quiz);
  @override
  List<Object> get props => [quiz];
}

/// State when there is an error loading the quiz
final class QuizError extends QuizSetupState {
  final String message;
  const QuizError(this.message);
  @override
  List<Object> get props => [message];
}
