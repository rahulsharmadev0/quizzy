import 'package:dart_suite/dart_suite.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'quiz_outcome.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class QuizOutcome extends Equatable {
  final int quizId;
  final int total;
  final int correct;
  final int unAnswered;
  final int visited;
  final int negativeMarks;
  final int positiveMarks;
  final Duration takenTime;
  final Duration totalTime;
  final DateTime date;

  /// A map that provides a detailed breakdown of the user's performance.
  ///
  /// The keys represent different aspects or categories of the quiz, and the values
  /// provide the corresponding performance metrics or data.
  ///
  /// This field is currently not in use but is intended for future implementation
  /// to give users more insights into their quiz results.
  final Map<String, dynamic> performanceBreakdown;

  const QuizOutcome({
    required this.quizId,
    required this.total,
    required this.date,
    required this.correct,
    required this.unAnswered,
    required this.visited,
    required this.takenTime,
    required this.totalTime,
    required this.negativeMarks,
    required this.positiveMarks,
    required this.performanceBreakdown,
  });

  factory QuizOutcome.fromJson(Map<String, dynamic> json) => _$QuizOutcomeFromJson(json);

  Map<String, dynamic> toJson() => _$QuizOutcomeToJson(this);

  @override
  List<Object?> get props => [
        quizId,
        totalTime,
        total,
        correct,
        unAnswered,
        visited,
        takenTime,
        date,
        performanceBreakdown,
      ];
}

//------------------------ Extension ------------------------

extension QuizOutcomeExtension on QuizOutcome {
  int get wrong => total - correct - unAnswered;
  int get attempted => total - unAnswered;
  int get ansQues => total - unAnswered;
  int get unVisited => total - visited;

  int get positiveScore => positiveMarks * correct;
  int get negativeScore => negativeMarks * wrong;
  int get score => positiveScore - negativeScore;
  int get totalScore => positiveMarks * total;
  double get percentage => ((score / totalScore) * 100).toRoundPrecision(1).toDouble();

  String get formattedTime {
    return '${takenTime.inHours > 0 ? '${(takenTime.inHours % 60).round()}h ' : ''}'
        '${takenTime.inMinutes > 0 ? '${(takenTime.inMinutes % 60).round()}m ' : ''}'
        '${(takenTime.inSeconds % 60).round()}s';
  }

  String get formattedDate {
    final day = date.day;
    final month = date.month;
    final year = date.year;
    return '$day/$month/$year';
  }

  String get formattedPercentage => '${percentage.toStringAsFixed(2)}%';

  String get formattedCorrect {
    return '${correct.toString().padLeft(2, '0')}/${total.toString().padLeft(2, '0')}';
  }
}
