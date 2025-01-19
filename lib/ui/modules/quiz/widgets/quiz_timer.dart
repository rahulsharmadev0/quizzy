part of '../quiz_screen.dart';

class QuizTimerAndCounter extends StatelessWidget {
  const QuizTimerAndCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            leftWidget(),
            analogTimer(),
          ],
        ),
        linearTimerIndicator(),
      ],
    );
  }

  Widget leftWidget() {
    return BlocBuilder<QuizManager, QuizState>(builder: (context, state) {
      String text = switch (state) {
        QuizComplete _ => state.formattedCorrect,
        QuizInProgress _ => '${state.ansQues.toString().padLeft(2, '0')}/${state.queIdxs.length}',
        _ => '00/00',
      };
      return Row(spacing: 4, children: [
        const Icon(Icons.info_outline),
        Text(text, style: TextStyle(fontWeight: FontWeight.bold))
      ]);
    });
  }

  BlocBuilder<QuizTimerManager, QuizTimerState> linearTimerIndicator() {
    return BlocBuilder<QuizTimerManager, QuizTimerState>(
      builder: (context, state) {
        double value = switch (state) {
          QuizTimerInitial _ => 1,
          QuizTimerInProgress _ => state.progress,
          QuizTimerPause _ => state.progress,
          _ => 0,
        };
        return LinearProgressIndicator(
          value: value,
          backgroundColor: Colors.black38,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
        );
      },
    );
  }

  Widget analogTimer() {
    return BlocBuilder<QuizTimerManager, QuizTimerState>(
      builder: (context, state) {
        String text = switch (state) {
          QuizTimerInProgress _ => state.duration.toString().substring(2, 7),
          QuizTimerPause _ => state.duration.toString().substring(2, 7),
          _ => '00:00',
        };
        return Row(spacing: 4, children: [
          Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
          Icon(Icons.access_time, size: 20),
        ]);
      },
    );
  }
}
