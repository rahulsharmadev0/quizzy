part of '../quiz_screen.dart';

class QuizNavButtons extends StatelessWidget {
  const QuizNavButtons({super.key});

  @override
  Widget build(BuildContext context) {
    var (isLastQue, isFirstQue) = context.select((QuizManager m) {
      if (m.state is! QuizInProgress) return (false, false);
      var state = m.state as QuizInProgress;
      return (state.isLastQue, state.isFirstQue);
    });

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        isFirstQue ? SizedBox.shrink() : QuizNavPreviousQuestion(),
        isLastQue ? QuizSubmitButton() : QuizNavNextQuestion(),
      ],
    );
  }
}

class QuizNavPreviousQuestion extends StatelessWidget {
  const QuizNavPreviousQuestion({super.key});

  @override
  Widget build(BuildContext context) => TextButton.icon(
        iconAlignment: IconAlignment.start,
        onPressed: () => context.read<QuizManager>().add(PreviousQuestionEvent()),
        icon: Icon(Icons.arrow_back),
        label: Text('Previous'),
      );
}

class QuizNavNextQuestion extends StatelessWidget {
  const QuizNavNextQuestion({super.key});
  @override
  Widget build(BuildContext context) => FilledButton.icon(
        iconAlignment: IconAlignment.end,
        onPressed: () => context.read<QuizManager>().add(NextQuestionEvent()),
        icon: Icon(Icons.arrow_forward),
        label: Text('Next'),
      );
}

class QuizSubmitButton extends StatelessWidget {
  const QuizSubmitButton({super.key});
  @override
  Widget build(BuildContext context) {
    return FilledButton.icon(
      iconAlignment: IconAlignment.end,
      onPressed: () => context.read<QuizManager>().add(QuizCompleteEvent()),
      icon: Icon(Icons.arrow_forward),
      label: Text('Submit'),
    );
  }
}
