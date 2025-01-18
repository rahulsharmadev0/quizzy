part of 'quiz_timer_bloc.dart';

@immutable
sealed class QuizTimerState extends Equatable {
  const QuizTimerState();
  @override
  List<Object> get props => [];
}

/// Initial state of the quiz timer.
final class QuizTimerInitial extends QuizTimerState {
  const QuizTimerInitial();
}

/// State when the quiz timer is running.
final class QuizTimerRunInProgress extends QuizTimerState {
  final int remainingTimeInSeconds;
  final int originalTimeInSeconds;

  const QuizTimerRunInProgress(this.remainingTimeInSeconds, this.originalTimeInSeconds);
  Duration get duration => Duration(seconds: remainingTimeInSeconds);
  double get progress => remainingTimeInSeconds / originalTimeInSeconds;

  @override
  List<Object> get props => [remainingTimeInSeconds, originalTimeInSeconds];
}

/// State when the quiz timer is paused.
final class QuizTimerRunPause extends QuizTimerState {
  final int remainingTimeInSeconds;
  final int originalTimeInSeconds;

  const QuizTimerRunPause(this.remainingTimeInSeconds, this.originalTimeInSeconds);
  Duration get duration => Duration(seconds: remainingTimeInSeconds);
  double get progress => remainingTimeInSeconds / originalTimeInSeconds;

  @override
  List<Object> get props => [remainingTimeInSeconds, originalTimeInSeconds];
}

/// State when the quiz timer has completed.
final class QuizTimerRunComplete extends QuizTimerState {
  const QuizTimerRunComplete();
}
