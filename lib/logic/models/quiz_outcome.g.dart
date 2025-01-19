// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_outcome.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuizOutcome _$QuizOutcomeFromJson(Map<String, dynamic> json) => QuizOutcome(
      quizId: (json['quiz_id'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      date: DateTime.parse(json['date'] as String),
      correct: (json['correct'] as num).toInt(),
      unAnswered: (json['un_answered'] as num).toInt(),
      visited: (json['visited'] as num).toInt(),
      takenTime: Duration(microseconds: (json['taken_time'] as num).toInt()),
      totalTime: Duration(microseconds: (json['total_time'] as num).toInt()),
      negativeMarks: (json['negative_marks'] as num).toInt(),
      positiveMarks: (json['positive_marks'] as num).toInt(),
      performanceBreakdown:
          json['performance_breakdown'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$QuizOutcomeToJson(QuizOutcome instance) =>
    <String, dynamic>{
      'quiz_id': instance.quizId,
      'total': instance.total,
      'correct': instance.correct,
      'un_answered': instance.unAnswered,
      'visited': instance.visited,
      'negative_marks': instance.negativeMarks,
      'positive_marks': instance.positiveMarks,
      'taken_time': instance.takenTime.inMicroseconds,
      'total_time': instance.totalTime.inMicroseconds,
      'date': instance.date.toIso8601String(),
      'performance_breakdown': instance.performanceBreakdown,
    };
