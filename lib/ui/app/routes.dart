import 'package:flutter/material.dart';
import 'package:quizzy/logic/models/quiz.dart';
import 'package:quizzy/ui/modules/quiz/quiz_screen.dart';
import 'package:quizzy/ui/modules/quiz_instructions/quiz_instructions_screen.dart';

abstract class AppRoutes {
  static final Map<String, WidgetBuilder> _root = {
    '/': (context) => QuizInstructionsScreen(quizId: '678c1f32e41b4d34e47a504a'),
    '/quiz': (context) => QuizScreen(
          quizId: '678c1f32e41b4d34e47a504a',
        ),
  };
  static String get initialRoute => '/';
  static Map<String, WidgetBuilder> get routes => _root;
}
