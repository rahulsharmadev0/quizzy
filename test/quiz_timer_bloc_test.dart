import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:quizzy/ui/bloc/quiz_timer_bloc.dart';

void main() {
  group('QuizTimerManager', () {
    late QuizTimerManager quizTimerBloc;

    setUp(() {
      quizTimerBloc = QuizTimerManager();
    });

    tearDown(() {
      quizTimerBloc.close();
    });

    test('initial state is QuizTimerInitial', () {
      expect(quizTimerBloc.state, const QuizTimerInitial());
    });

    blocTest<QuizTimerManager, QuizTimerState>(
      'emits [QuizTimerRunInProgress] when QuizTimerStarted is added',
      build: () => quizTimerBloc,
      act: (bloc) => bloc.add(QuizTimerStarted(Duration(minutes: 1))),
      expect: () => [isA<QuizTimerInProgress>()],
    );

    blocTest<QuizTimerManager, QuizTimerState>(
      'emits [QuizTimerRunPause] when QuizTimerPaused is added',
      build: () => quizTimerBloc,
      act: (bloc) {
        bloc.add(QuizTimerStarted(Duration(minutes: 1)));
        bloc.add(QuizTimerPaused());
      },
      expect: () => [
        isA<QuizTimerInProgress>(),
        isA<QuizTimerPause>(),
      ],
    );

    blocTest<QuizTimerManager, QuizTimerState>(
      'emits [QuizTimerRunInProgress] when QuizTimerResumed is added',
      build: () => quizTimerBloc,
      act: (bloc) {
        bloc.add(QuizTimerStarted(Duration(minutes: 1)));
        bloc.add(QuizTimerPaused());
        bloc.add(QuizTimerResumed());
      },
      expect: () => [
        isA<QuizTimerInProgress>(),
        isA<QuizTimerPause>(),
        isA<QuizTimerInProgress>(),
      ],
    );

    blocTest<QuizTimerManager, QuizTimerState>(
      'emits [QuizTimerRunComplete] when timer completes',
      build: () => quizTimerBloc,
      act: (bloc) => bloc.add(QuizTimerStarted(Duration(seconds: 1))),
      wait: const Duration(seconds: 2),
      expect: () => [
        isA<QuizTimerInProgress>(),
        isA<QuizTimerComplete>(),
      ],
    );
  });
}
