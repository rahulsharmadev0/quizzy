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
      QuizTimerRunInProgress _ => (state as QuizTimerRunInProgress).duration,
      QuizTimerRunPause _ => (state as QuizTimerRunPause).duration,
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

  void _onStarted(QuizTimerStarted event, Emitter<QuizTimerState> emit) {
    _tickerSubscription?.cancel(); // Cancel any existing subscription

    emit(QuizTimerRunInProgress(event.duration.inSeconds, event.duration.inSeconds));

    _tickerSubscription = _tick(event.duration.inSeconds).listen(
      (remainingSeconds) {
        add(QuizTimerTicked(remainingSeconds));
      },
    );
  }

  void _onPaused(QuizTimerPaused event, Emitter<QuizTimerState> emit) {
    if (state is QuizTimerRunInProgress) {
      _tickerSubscription?.pause();
      var state = (this.state as QuizTimerRunInProgress);
      emit(QuizTimerRunPause(state.remainingTimeInSeconds, state.originalTimeInSeconds));
    }
  }

  void _onStopped(QuizTimerStopped event, Emitter<QuizTimerState> emit) {
    _tickerSubscription?.cancel();
    emit(const QuizTimerInitial());
  }

  void _onResumed(QuizTimerResumed event, Emitter<QuizTimerState> emit) {
    if (state is QuizTimerRunPause) {
      _tickerSubscription?.resume();

      var state = (this.state as QuizTimerRunInProgress);
      emit(QuizTimerRunInProgress(state.remainingTimeInSeconds, state.originalTimeInSeconds));
    }
  }

  void _onTicked(QuizTimerTicked event, Emitter<QuizTimerState> emit) {
    if (event.durationInSeconds > 0) {
      emit(QuizTimerRunInProgress(event.durationInSeconds, (state as QuizTimerRunInProgress).originalTimeInSeconds));
    } else {
      emit(const QuizTimerRunComplete());
      _tickerSubscription?.cancel(); // Ensure subscription is cancelled when completed
    }
  }

  Stream<int> _tick(int durationInSeconds) =>
      Stream.periodic(const Duration(seconds: 1), (x) => durationInSeconds - x - 1).take(durationInSeconds);

  @override
  Future<void> close() async {
    await _tickerSubscription?.cancel(); // Ensure subscription is properly cleaned up
    return super.close();
  }
}
