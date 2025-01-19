import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'quiz_timer_event.dart';
part 'quiz_timer_state.dart';

class QuizTimerManager extends Bloc<QuizTimerEvent, QuizTimerState> {
  StreamSubscription<int>? _tickerSubscription;

  /// Node:
  /// if QuizTimerRunInProgress or QuizTimerRunPause then return the duration
  /// else return Duration.zero
  Duration get currentDuration {
    return switch (state) {
      QuizTimerInProgress _ => (state as QuizTimerInProgress).duration,
      QuizTimerPause _ => (state as QuizTimerPause).duration,
      _ => Duration.zero
    };
  }

  QuizTimerManager() : super(const QuizTimerInitial()) {
    on<QuizTimerStarted>(_onStarted);
    on<QuizTimerPaused>(_onPaused);
    on<QuizTimerResumed>(_onResumed);
    on<QuizTimerTicked>(_onTicked);
    on<QuizTimerStopped>(_onStopped);
  }

  /// Handles the [QuizTimerStarted] event.
  void _onStarted(QuizTimerStarted event, Emitter<QuizTimerState> emit) {
    _tickerSubscription?.cancel(); // Cancel any existing subscription

    emit(QuizTimerInProgress(event.duration.inSeconds, event.duration.inSeconds));

    _tickerSubscription = _tick(event.duration.inSeconds).listen(
      (remainingSeconds) {
        add(QuizTimerTicked(remainingSeconds));
      },
    );
  }

  /// Handles the [QuizTimerPaused] event.
  void _onPaused(QuizTimerPaused event, Emitter<QuizTimerState> emit) {
    if (state is QuizTimerInProgress) {
      _tickerSubscription?.pause();
      var state = (this.state as QuizTimerInProgress);
      emit(QuizTimerPause(state.remainingTimeInSeconds, state.originalTimeInSeconds));
    }
  }

  /// Handles the [QuizTimerStopped] event.
  void _onStopped(QuizTimerStopped event, Emitter<QuizTimerState> emit) {
    _tickerSubscription?.cancel();
  }

  /// Handles the [QuizTimerResumed] event.
  void _onResumed(QuizTimerResumed event, Emitter<QuizTimerState> emit) {
    if (state is QuizTimerPause) {
      _tickerSubscription?.resume();

      var state = (this.state as QuizTimerInProgress);
      emit(QuizTimerInProgress(state.remainingTimeInSeconds, state.originalTimeInSeconds));
    }
  }

  /// Handles the [QuizTimerTicked] event.
  void _onTicked(QuizTimerTicked event, Emitter<QuizTimerState> emit) {
    if (event.durationInSeconds > 0) {
      emit(QuizTimerInProgress(
          event.durationInSeconds, (state as QuizTimerInProgress).originalTimeInSeconds));
    } else {
      _tickerSubscription?.cancel();
      emit(QuizTimerComplete());
    }
  }

  /// Creates a stream that emits the remaining time in seconds.
  Stream<int> _tick(int durationInSeconds) =>
      Stream.periodic(const Duration(seconds: 1), (x) => durationInSeconds - x - 1).take(durationInSeconds);

  @override
  Future<void> close() async {
    await _tickerSubscription?.cancel(); // Ensure subscription is properly cleaned up
    return super.close();
  }
}
