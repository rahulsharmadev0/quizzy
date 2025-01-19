import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quizzy/ui/app/theme/app_theme_cubit.dart';
import 'routes.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppTheme, ThemeData>(
      builder: (context, theme) {
        return MaterialApp.router(
          routerConfig: router,
          theme: theme,
        );
      },
    );
  }
}
