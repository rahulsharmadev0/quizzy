import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quizzy/logic/models/quiz.dart';
import 'package:quizzy/ui/bloc/bloc/quiz_data_manager_bloc.dart';

part 'quiz_setup_state.dart';

/// Cubit to manage the state of quiz setup
class QuizSetupCubit extends Cubit<QuizSetupState> {
  final QuizDataManager quizDataManager;

  /// Constructor initializes the cubit with the initial state and loads the quiz
  QuizSetupCubit(this.quizDataManager, String quizId) : super(QuizSetupInitial(quizId)) {
    _loadQuiz(quizId);
  }

  /// Loads the quiz by its ID, emits loading, loaded, or error states
  Future<void> _loadQuiz(String quizId) async {
    try {
      emit(QuizLoading());
      final quiz = quizDataManager.getQuizById(quizId);
      if (quiz != null) {
        emit(QuizLoaded(quiz));
      } else {
        quizDataManager.add(FetchQuizDataEvent(quizId));
        final event = await quizDataManager.stream.firstWhere((event) => event.containsKey(quizId));
        emit(QuizLoaded(event[quizId]!));
      }
    } catch (e) {
      emit(QuizError(e.toString()));
    }
  }
}
