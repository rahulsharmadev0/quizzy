import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzy/logic/models/quiz.dart';
import 'package:quizzy/logic/models/quiz_outcome.dart';
import 'package:quizzy/ui/bloc/bloc/quiz_data_manager_bloc.dart';
import 'package:quizzy/ui/bloc/quiz_bloc.dart';
import 'package:quizzy/ui/bloc/quiz_history_bloc.dart';
import 'package:quizzy/ui/bloc/quiz_timer_bloc.dart';
import 'package:quizzy/ui/widgets/default_button.dart';

part 'widgets/other_widgets.dart';
part 'widgets/quiz_options.dart';
part 'widgets/quiz_timer.dart';

class QuizScreen extends StatelessWidget {
  final String quizId;
  const QuizScreen({super.key, required this.quizId});

  @override
  Widget build(BuildContext context) {
    final quiz = context.read<QuizDataManager>().getQuizById(quizId);
    if (quiz == null) return const Center(child: Text('No quiz found'));

    final quizTimerManager = QuizTimerManager();
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: quizTimerManager),
        BlocProvider(
          create: (context) => QuizManager(
              questionIdxs: quiz.questionIds,
              answersKeyPair: quiz.answersKeyPair,
              timerManger: quizTimerManager,
              historyManager: context.read<QuizHistoryManager>(),
              canGoBack: true,
              isAutoComplete: false)
            ..add(StartQuizEvent(quiz.duration)),
        ),
      ],
      child: PopScope(
        canPop: false,
        child: Scaffold(
          appBar: AppBar(title: const Text('Quiz'), leading: CloseButton()),
          body: BlocBuilder<QuizManager, QuizState>(
            builder: (context, state) {
              if (state is! QuizInProgress) return const Center(child: CircularProgressIndicator());

              final curQueIdx = state.curQueIdx;
              final question = quiz.getQustionById(curQueIdx);

              return Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  spacing: 16,
                  children: [
                    QuizTimerAndCounter(),
                    Text(question.description, style: Theme.of(context).textTheme.headlineMedium),
                    Spacer(),
                    QuizOptions(options: question.options),
                    QuizNavButtons(),
                    const SizedBox(height: 16),
                    const SizedBox(height: 56),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
