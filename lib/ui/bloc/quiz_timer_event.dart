part of 'quiz_timer_bloc.dart';

@immutable
sealed class QuizTimerEvent {}

/// Event to start the quiz timer.
final class QuizTimerStarted extends QuizTimerEvent {
  final Duration duration;
  QuizTimerStarted(this.duration);
}

/// Event to pause the quiz timer.
final class QuizTimerPaused extends QuizTimerEvent {}

/// Event to resume the quiz timer.
final class QuizTimerResumed extends QuizTimerEvent {}

/// Event to stop the quiz timer.
final class QuizTimerStopped extends QuizTimerEvent {}

/// Event to notify that a tick has occurred.
/// [durationInSeconds] is the remaining time in seconds.
final class QuizTimerTicked extends QuizTimerEvent {
  final int durationInSeconds;
  Duration get duration => Duration(seconds: durationInSeconds);
  QuizTimerTicked(this.durationInSeconds);
}
