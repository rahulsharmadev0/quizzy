import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:quizzy/logic/models/quiz.dart';
import 'package:quizzy/logic/repositories/quiz_repository.dart';
import 'package:quizzy/logic/apis/quiz_api.dart';

import 'dummay.dart';

class MockQuizApi extends Mock implements QuizApi {
  @override
  Future<Map<String, dynamic>> getQuizById(String id) {
    return super
        .noSuchMethod(Invocation.method(#getQuizById, [id]), returnValue: Future.value(<String, dynamic>{}));
  }
}

void main() {
  group('QuizRepository', () {
    late QuizRepository quizRepository;
    late MockQuizApi mockQuizApi;

    setUp(() {
      mockQuizApi = MockQuizApi();
      quizRepository = QuizRepository.test(mockQuizApi);
    });

    test('returns a quiz when getQuizById is called', () async {
      final quizId = '123';
      final quiz = Quiz.fromJson(quizTestJson);

      when(mockQuizApi.getQuizById(quizId)).thenAnswer((_) async => quizTestJson);

      final result = await quizRepository.getQuizById(quizId);

      expect(result, equals(quiz));
      verify(mockQuizApi.getQuizById(quizId)).called(1);
    });

    test('returns cached quiz on subsequent calls', () async {
      final quizId = '123';
      final quiz = Quiz.fromJson(quizTestJson);
      QuizRepository.clearCache();

      when(mockQuizApi.getQuizById(quizId)).thenAnswer((_) async => quizTestJson);

      final result1 = await quizRepository.getQuizById(quizId); // from api
      final result2 = await quizRepository.getQuizById(quizId); // cached

      expect(result1, equals(quiz));
      expect(result2, equals(quiz));
      verify(mockQuizApi.getQuizById(quizId)).called(1);
    });
  });
}
