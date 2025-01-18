// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_outcome.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuizOutcome _$QuizOutcomeFromJson(Map<String, dynamic> json) => QuizOutcome(
      total: (json['total'] as num).toInt(),
      correct: (json['correct'] as num).toInt(),
      unAnswered: (json['un_answered'] as num).toInt(),
      unVisited: (json['un_visited'] as num).toInt(),
      takenTime: Duration(microseconds: (json['taken_time'] as num).toInt()),
      date: DateTime.parse(json['date'] as String),
      performanceBreakdown:
          json['performance_breakdown'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$QuizOutcomeToJson(QuizOutcome instance) =>
    <String, dynamic>{
      'total': instance.total,
      'correct': instance.correct,
      'un_answered': instance.unAnswered,
      'un_visited': instance.unVisited,
      'taken_time': instance.takenTime.inMicroseconds,
      'date': instance.date.toIso8601String(),
      'performance_breakdown': instance.performanceBreakdown,
    };
