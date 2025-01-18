import 'package:flutter/foundation.dart';

import '../models/quiz.dart';
import '../apis/quiz_api.dart';

// ignore: unused_element
Quiz? _cache;

class QuizRepository {
  final QuizApi quizApi;
  QuizRepository() : quizApi = QuizApi();

  @visibleForTesting
  QuizRepository.test(this.quizApi);

  /// Fetches a quiz by its ID from the API and caches it.
  Future<Quiz> getQuizById(String quizId) async {
    if (_cache != null) return _cache!;
    final json = await quizApi.getQuizById(quizId);
    return _cache = Quiz.fromJson(json);
  }

  static void clearCache() => _cache = null;
}
