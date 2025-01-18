import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzy/logic/models/quiz.dart';
import 'package:quizzy/ui/bloc/bloc/quiz_data_manager_bloc.dart';
import 'package:quizzy/ui/modules/quiz_instructions/widget/mark_container.dart';
import 'package:quizzy/ui/widgets/default_button.dart';
import 'package:quizzy/ui/modules/quiz_instructions/cubit/quiz_setup_cubit.dart';

class QuizInstructionsScreen extends StatelessWidget {
  final String quizId;
  const QuizInstructionsScreen({super.key, required this.quizId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => QuizSetupCubit(context.read<QuizDataManager>(), quizId),
      child: Scaffold(
        body: BlocBuilder<QuizSetupCubit, QuizSetupState>(
          builder: (context, state) {
            if (state is QuizLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is QuizLoaded) {
              return QuizInstructionsContent(quiz: state.quiz);
            } else if (state is QuizError) {
              return Center(child: Text('Error: ${state.message}'));
            }
            return Container();
          },
        ),
      ),
    );
  }
}

class QuizInstructionsContent extends StatelessWidget {
  final Quiz quiz;
  const QuizInstructionsContent({super.key, required this.quiz});

  @override
  Widget build(BuildContext context) {
    var normalB = TextStyle(
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      height: 1.78,
    );
    var normal = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      height: 1.78,
    );

    return Container(
      constraints: BoxConstraints.expand(),
      padding: EdgeInsets.fromLTRB(16, 100, 16, 16),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/background.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: SizedBox(
          width: 500,
          child: Column(
            spacing: 8,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(quiz.title, style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600)),
              Text(quiz.topic, style: normal),
              quizInstruction(normal, normalB),
              MarkingContainers(positiveMarks: quiz.correctAnswerMarks, negativeMarks: quiz.negativeMarks),
              SizedBox(height: 64),
              Column(
                spacing: 8,
                children: [
                  DefaultButton(
                      text: "Let's Start",
                      onTap: () => Navigator.pushNamed(context, '/quiz', arguments: quiz)),
                  TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.history_rounded),
                    label: Text('Results'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Text quizInstruction(TextStyle normal, TextStyle normalB) {
    return Text.rich(
      style: normal,
      TextSpan(
        children: [
          TextSpan(text: 'Quiz Instruction:\n', style: normalB),
          TextSpan(
            text: 'Duration: ${quiz.duration} minutes\n • Total Questions: ${quiz.questionsCount}\n',
          ),
          TextSpan(text: 'Marking Scheme:\n', style: normalB),
          TextSpan(
            text:
                ' • Correct Answer: +${quiz.correctAnswerMarks} points\n • Wrong Answer: ${quiz.negativeMarks} point',
          ),
        ],
      ),
    );
  }
}
