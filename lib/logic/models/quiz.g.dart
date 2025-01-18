// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quiz _$QuizFromJson(Map<String, dynamic> json) => Quiz(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      topic: json['topic'] as String,
      duration: (json['duration'] as num).toInt(),
      negativeMarks: (json['negative_marks'] as num).toInt(),
      correctAnswerMarks: (json['correct_answer_marks'] as num).toInt(),
      questionsCount: (json['questions_count'] as num).toInt(),
      shuffle: json['shuffle'] as bool,
      showAnswers: json['show_answers'] as bool,
      questions: Quiz._questionsFromJson(json['questions'] as List),
      description: json['description'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      endsAt: json['ends_at'] == null
          ? null
          : DateTime.parse(json['ends_at'] as String),
    );

Map<String, dynamic> _$QuizToJson(Quiz instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'topic': instance.topic,
      'description': instance.description,
      'duration': instance.duration,
      'negative_marks': instance.negativeMarks,
      'correct_answer_marks': instance.correctAnswerMarks,
      'shuffle': instance.shuffle,
      'show_answers': instance.showAnswers,
      'questions_count': instance.questionsCount,
      'ends_at': instance.endsAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'questions': Quiz._questionsToJson(instance.questions),
    };

Question _$QuestionFromJson(Map<String, dynamic> json) => Question(
      id: (json['id'] as num).toInt(),
      description: json['description'] as String,
      isMandatory: json['is_mandatory'] as bool,
      topicId: (json['topic_id'] as num).toInt(),
      options: Question._optionsFromJson(json['options'] as List),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      detailedSolution: json['detailed_solution'] as String?,
    );

Map<String, dynamic> _$QuestionToJson(Question instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'is_mandatory': instance.isMandatory,
      'topic_id': instance.topicId,
      'detailed_solution': instance.detailedSolution,
      'options': Question._optionsToJson(instance.options),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

Option _$OptionFromJson(Map<String, dynamic> json) => Option(
      id: (json['id'] as num).toInt(),
      description: json['description'] as String,
      questionId: (json['question_id'] as num).toInt(),
      isCorrect: json['is_correct'] as bool,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$OptionToJson(Option instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'question_id': instance.questionId,
      'is_correct': instance.isCorrect,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
