import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:quizzy/logic/models/quiz.dart';
import 'package:quizzy/logic/repositories/quiz_repository.dart';

part 'quiz_data_manager_event.dart';

typedef QuizData = Map<String, Quiz>;

class QuizDataManager extends HydratedBloc<QuizDataEvent, QuizData> {
  final QuizRepository _quizRepository;
  QuizDataManager(this._quizRepository) : super({}) {
    on<FetchQuizDataEvent>(_onFetchQuizDataEvent);
  }

  Future<void> _onFetchQuizDataEvent(FetchQuizDataEvent event, Emitter<QuizData> emit) async {
    try {
      final quizData = await _quizRepository.getQuizById(event.quizId);
      emit({...state, event.quizId: quizData});
    } catch (e) {
      // Handle error appropriately, e.g., log it or emit an error state
    }
  }

  @override
  QuizData? fromJson(Map<String, dynamic> json) {
    return json.map((key, value) => MapEntry(key, Quiz.fromJson(value)));
  }

  @override
  Map<String, dynamic>? toJson(QuizData state) {
    return state.map((key, value) => MapEntry(key, value.toJson()));
  }
}

//--------------------Extension --------------------
extension QuizDataExtension on QuizDataManager {
  Quiz? getQuizById(String quizId) => state[quizId];
}
