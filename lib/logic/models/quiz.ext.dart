part of 'quiz.dart';

extension QuizExt on Quiz {
  int get totalQuestions => questions.length;
  int get optionsPerQuestion => questions.values.first.options.length;
  int get totalMarks => totalQuestions * correctAnswerMarks;

  List<int> get questionIds => questions.keys.toList();
  Map<int, int> get answersKeyPair {
    return questions.map((key, value) {
      return MapEntry(key, value.options.keys.firstWhere((key) => value.options[key]!.isCorrect));
    });
  }

  Question getQustionById(int qusId) {
    if (!questions.containsKey(qusId)) {
      throw Exception("Question not found");
    }
    return questions[qusId]!;
  }

  List<Option> getOptionById(int qusId) {
    if (!questions.containsKey(qusId)) {
      throw Exception("Question not found");
    }
    return questions[qusId]!.options.values.toList();
  }

  bool? isCorrectAnswer(int questionIndex, int optionIndex) {
    if (!questions.containsKey(questionIndex)) {
      throw Exception("Question not found");
    }
    if (!questions[questionIndex]!.options.containsKey(optionIndex)) {
      throw Exception("Option not found");
    }
    return questions[questionIndex]!.options[optionIndex]!.isCorrect;
  }
}
