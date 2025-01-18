import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';
part 'quiz.g.dart';
part 'quiz.ext.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Quiz extends Equatable {
  final int id;
  final String title;
  final String topic;
  final String? description;
  final int duration;
  final int negativeMarks;
  final int correctAnswerMarks;
  final bool shuffle;
  final bool showAnswers;
  final int questionsCount;
  final DateTime? endsAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  @JsonKey(fromJson: _questionsFromJson, toJson: _questionsToJson)
  final Map<int, Question> questions;

  const Quiz({
    required this.id,
    required this.title,
    required this.topic,
    required this.duration,
    required this.negativeMarks,
    required this.correctAnswerMarks,
    required this.questionsCount,
    required this.shuffle,
    required this.showAnswers,
    required this.questions,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.endsAt,
  });

  factory Quiz.fromJson(Map<String, dynamic> json) => _$QuizFromJson(json);
  Map<String, dynamic> toJson() => _$QuizToJson(this);

  static Map<int, Question> _questionsFromJson(List<dynamic> list) {
    var map = <int, Question>{};
    for (var element in list) {
      var question = Question.fromJson(element as Map<String, dynamic>);
      map[question.id] = question;
    }
    return map;
  }

  static Map<String, dynamic> _questionsToJson(Map<int, Question> questions) {
    return {'questions': questions.map((key, value) => MapEntry(key.toString(), value.toJson()))};
  }

  @override
  List<Object?> get props => [
        id,
        title,
        topic,
        description,
        duration,
        negativeMarks,
        correctAnswerMarks,
        shuffle,
        showAnswers,
        questionsCount,
        endsAt,
        createdAt,
        updatedAt,
        questions,
      ];
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Question extends Equatable {
  final int id;
  final String description;
  final bool isMandatory;
  final int topicId;
  final String? detailedSolution;

  @JsonKey(fromJson: _optionsFromJson, toJson: _optionsToJson)
  final Map<int, Option> options;

  final DateTime? createdAt;
  final DateTime? updatedAt;

  const Question({
    required this.id,
    required this.description,
    required this.isMandatory,
    required this.topicId,
    required this.options,
    this.createdAt,
    this.updatedAt,
    this.detailedSolution,
  });

  factory Question.fromJson(Map<String, dynamic> json) => _$QuestionFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionToJson(this);

  static Map<int, Option> _optionsFromJson(List<dynamic> list) {
    var map = <int, Option>{};
    for (var element in list) {
      var option = Option.fromJson(element as Map<String, dynamic>);
      map[option.id] = option;
    }
    return map;
  }

  static Map<String, dynamic> _optionsToJson(Map<int, Option> options) {
    return {'options': options.map((key, value) => MapEntry(key.toString(), value.toJson()))};
  }

  @override
  List<Object?> get props => [
        id,
        description,
        isMandatory,
        topicId,
        detailedSolution,
        options,
        createdAt,
        updatedAt,
      ];
}

@JsonSerializable(fieldRename: FieldRename.snake)
class Option extends Equatable {
  final int id;
  final String description;
  final int questionId;
  final bool isCorrect;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  const Option({
    required this.id,
    required this.description,
    required this.questionId,
    required this.isCorrect,
    this.createdAt,
    this.updatedAt,
  });

  factory Option.fromJson(Map<String, dynamic> json) => _$OptionFromJson(json);

  Map<String, dynamic> toJson() => _$OptionToJson(this);

  @override
  List<Object?> get props => [
        id,
        description,
        questionId,
        isCorrect,
        createdAt,
        updatedAt,
      ];
}
