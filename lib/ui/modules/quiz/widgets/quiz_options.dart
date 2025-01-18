part of '../quiz_screen.dart';

class QuizOptions extends StatelessWidget {
  final Map<int, Option> options;
  const QuizOptions({super.key, required this.options});

  @override
  Widget build(BuildContext context) {
    final opts = options.entries.toList();
    return Column(
      spacing: 12,
      children: opts.map((e) => _converter(e, context)).toList(),
    );
  }

  Widget _converter(MapEntry<int, Option> entry, BuildContext context) {
    return BlocBuilder<QuizManager, QuizState>(
      builder: (context, state) {
        bool value = switch (state) {
          QuizInProgress _ => state.isAnswered(entry.value.questionId, ansId: entry.key),
          _ => false,
        };
        return DefaultButton(
          text: entry.value.description,
          dense: true,
          color: value ? Theme.of(context).primaryColor : Theme.of(context).canvasColor,
          onTap: () => context.read<QuizManager>().add(SelectOptionEvent(entry.key)),
        );
      },
    );
  }
}
