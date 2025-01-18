import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'quiz_outcome.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class QuizOutcome extends Equatable {
  final int total;
  final int correct;
  final int unAnswered;
  final int unVisited;
  final Duration takenTime;
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
    required this.total,
    required this.correct,
    required this.unAnswered,
    required this.unVisited,
    required this.takenTime,
    required this.date,
    required this.performanceBreakdown,
  });

  factory QuizOutcome.fromJson(Map<String, dynamic> json) => _$QuizOutcomeFromJson(json);

  Map<String, dynamic> toJson() => _$QuizOutcomeToJson(this);

  @override
  List<Object?> get props => [
        total,
        correct,
        unAnswered,
        unVisited,
        takenTime,
        date,
        performanceBreakdown,
      ];
}

//------------------------ Extension ------------------------

extension QuizOutcomeExtension on QuizOutcome {
  double get percentage => (correct / total) * 100;
  int get ansQues => total - unAnswered;

  String get formattedTime {
    final minutes = takenTime.inMinutes;
    final seconds = takenTime.inSeconds.remainder(60);
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
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
