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
final class QuizTimerInProgress extends QuizTimerState {
  final int remainingTimeInSeconds;
  final int originalTimeInSeconds;

  const QuizTimerInProgress(this.remainingTimeInSeconds, this.originalTimeInSeconds);

  /// Returns the remaining duration as a [Duration] object.
  Duration get duration => Duration(seconds: remainingTimeInSeconds);

  /// Returns the progress of the timer as a percentage.
  double get progress => remainingTimeInSeconds / originalTimeInSeconds;

  @override
  List<Object> get props => [remainingTimeInSeconds, originalTimeInSeconds];
}

/// State when the quiz timer is paused.
final class QuizTimerPause extends QuizTimerState {
  final int remainingTimeInSeconds;
  final int originalTimeInSeconds;

  const QuizTimerPause(this.remainingTimeInSeconds, this.originalTimeInSeconds);

  /// Returns the remaining duration as a [Duration] object.
  Duration get duration => Duration(seconds: remainingTimeInSeconds);

  /// Returns the progress of the timer as a percentage.
  double get progress => remainingTimeInSeconds / originalTimeInSeconds;

  @override
  List<Object> get props => [remainingTimeInSeconds, originalTimeInSeconds];
}

/// State when the quiz timer has completed.
final class QuizTimerComplete extends QuizTimerState {
  const QuizTimerComplete();
}
