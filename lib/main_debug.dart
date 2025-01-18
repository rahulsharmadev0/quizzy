// ignore_for_file: no_wildcard_variable_uses

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzy/logic/repositories/quiz_repository.dart';
import 'package:quizzy/ui/app/app.dart';
import 'package:quizzy/ui/app/bootstrap.dart';
import 'package:quizzy/ui/app/theme/app_theme_cubit.dart';
import 'package:quizzy/ui/bloc/bloc/quiz_data_manager_bloc.dart';
import 'package:quizzy/ui/bloc/quiz_history_bloc.dart';

void main() {
  bootstrap(() {
    final providers = [
      BlocProvider(create: (_) => AppTheme()),
      RepositoryProvider(create: (_) => QuizRepository()),
      BlocProvider(create: (_) => QuizDataManager(_.read<QuizRepository>())),
      BlocProvider(create: (_) => QuizHistoryManager()),

    ];

    return MultiBlocProvider(
      providers: providers,
      child: App(),
    );
  });
}
