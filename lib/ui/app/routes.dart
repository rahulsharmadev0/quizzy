import 'package:go_router/go_router.dart';
import 'package:quizzy/logic/models/quiz.dart';
import 'package:quizzy/logic/models/quiz_outcome.dart';
import 'package:quizzy/ui/modules/quiz/quiz_screen.dart';
import 'package:quizzy/ui/modules/quiz_complete/quiz_complete_screen.dart';
import 'package:quizzy/ui/modules/quiz_instructions/quiz_instructions_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
        path: '/',
        name: 'QuizInstructionsScreen',
        builder: (context, state) => QuizInstructionsScreen(quizId: '678c1f32e41b4d34e47a504a'),
        routes: [
          GoRoute(
              path: 'quiz',
              name: 'QuizScreen',
              builder: (context, state) => QuizScreen(quiz: state.extra as Quiz)),
        ]),
    GoRoute(
      path: '/quiz-completed',
      name: 'QuizCompleteScreen',
      builder: (context, state) => QuizCompleteScreen(quizOutcome: state.extra as QuizOutcome),
    ),
  ],
);
