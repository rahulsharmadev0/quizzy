import 'package:flutter_test/flutter_test.dart';
import 'package:quizzy/logic/models/quiz.dart';

import 'dummay.dart';

void main() {
  group('Quiz Object', () {
    test('should be correctly serialized from JSON', () {
      // Arrange
      final quizJson = quizTestJson;

      // Act
      final quiz = Quiz.fromJson(quizJson);

      // Assert
      expect(quiz, isA<Quiz>());
      expect(quiz.id, equals(quizJson['id']));
      expect(quiz.title, equals(quizJson['title']));
      expect(quiz.description, equals(quizJson['description']));
      expect(quiz.topic, equals(quizJson['topic']));
      expect(quiz.createdAt, equals(DateTime.parse(quizJson['created_at']! as String)));
      expect(quiz.updatedAt, equals(DateTime.parse(quizJson['updated_at']! as String)));
      expect(quiz.duration, equals(quizJson['duration']));
      expect(quiz.negativeMarks, equals(quizJson['negative_marks']));
      expect(quiz.correctAnswerMarks, equals(quizJson['correct_answer_marks']));
      expect(quiz.shuffle, equals(quizJson['shuffle']));
      expect(quiz.showAnswers, equals(quizJson['show_answers']));
      expect(quiz.endsAt, equals(DateTime.parse(quizJson['ends_at'] as String)));
      expect(quiz.questionsCount, equals(quizJson['questions_count']));
      expect(quiz.questions.length, equals((quizJson['questions']! as List).length));
    });
  });
}
