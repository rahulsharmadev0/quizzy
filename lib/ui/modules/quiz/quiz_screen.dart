import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzy/logic/models/quiz.dart';
import 'package:quizzy/logic/models/quiz_outcome.dart';
import 'package:quizzy/ui/bloc/quiz_bloc.dart';
import 'package:quizzy/ui/bloc/quiz_history_bloc.dart';
import 'package:quizzy/ui/bloc/quiz_timer_bloc.dart';
import 'package:quizzy/ui/utils/frame_limit.dart';
import 'package:quizzy/ui/widgets/default_button.dart';

part 'widgets/other_widgets.dart';
part 'widgets/quiz_options.dart';
part 'widgets/quiz_timer.dart';

class QuizScreen extends StatelessWidget {
  final Quiz quiz;
  const QuizScreen({super.key, required this.quiz});

  @override
  Widget build(BuildContext context) {
    final quizTimerManager = QuizTimerManager();
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: quizTimerManager),
        BlocProvider(
          create: (context) => QuizManager(
              quiz: quiz,
              timerManger: quizTimerManager,
              historyManager: context.read<QuizHistoryManager>(),
              canGoBack: true,
              isAutoComplete: false)
            ..add(StartQuizEvent()),
        ),
      ],
      child: BlocConsumer<QuizManager, QuizState>(
        listenWhen: (previous, current) => current is QuizComplete,
        listener: (context, state) {
          if (state is QuizComplete) {
            context.pushReplacementNamed('QuizCompleteScreen', extra: state as QuizOutcome);
          }
        },
        builder: (context, state) {
          if (state is! QuizInProgress) return const Center(child: CircularProgressIndicator());
          final curQueIdx = state.curQueIdx;
          final question = quiz.getQustionById(curQueIdx);
          return Scaffold(
              appBar: AppBar(title: const Text('Quiz'), leading: CloseButton()),
              body: FrameLimit(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - kToolbarHeight - 32,
                  child: Column(
                    spacing: 12,
                    children: [
                      QuizTimerAndCounter(),
                      Text(question.description),
                      Spacer(),
                      QuizOptions(options: question.options),
                      const SizedBox(height: 16),
                      QuizNavButtons(),
                      const SizedBox(height: 56),
                    ],
                  ),
                ),
              ));
        },
      ),
    );
  }
}
