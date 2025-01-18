part of 'quiz_bloc.dart';

@immutable
sealed class QuizState {}

/// Initial state of the quiz.
final class QuizInitial extends QuizState {}

/// State when the quiz is complete.
final class QuizComplete extends QuizOutcome implements QuizState {
  const QuizComplete({
    required super.total,
    required super.correct,
    required super.unAnswered,
    required super.unVisited,
    required super.takenTime,
    required super.date,
    required super.performanceBreakdown,
  });
}

/// State when the quiz is in progress.
final class QuizInProgress extends QuizState {
  final int curQueIdx;
  final List<int> queIdxs;
  final Set<int> visitedQueIdxs;
  final Map<int, int> ansQueIdxs;

  QuizInProgress({
    required this.ansQueIdxs,
    required this.curQueIdx,
    required this.queIdxs,
    required this.visitedQueIdxs,
  });

  factory QuizInProgress.initial(List<int> queIdxs) {
    return QuizInProgress(
      ansQueIdxs: {},
      curQueIdx: queIdxs.first,
      queIdxs: queIdxs,
      visitedQueIdxs: {},
    );
  }

  QuizInProgress copyWith({
    int? curQueIdx,
    List<int>? queIdxs,
    Set<int>? visitedQueIdxs,
    Map<int, int>? ansQueIdxs,
  }) {
    return QuizInProgress(
      ansQueIdxs: ansQueIdxs ?? this.ansQueIdxs,
      curQueIdx: curQueIdx ?? this.curQueIdx,
      queIdxs: queIdxs ?? this.queIdxs,
      visitedQueIdxs: visitedQueIdxs ?? this.visitedQueIdxs,
    );
  }
}

//--------------------EXTENSIONS--------------------

extension QuizInProgressGetterExt on QuizInProgress {
  bool isAnswered(int queIdx, {int? ansId}) =>
      ansQueIdxs.containsKey(queIdx) && (ansId == null || ansQueIdxs[queIdx] == ansId);

  bool isVisited(int queIdx) => visitedQueIdxs.contains(queIdx);

  /// Number of questions that are not answered yet
  int get unAnsQues => queIdxs.length - ansQueIdxs.length;
  int get ansQues => ansQueIdxs.length;
  int get totalQues => queIdxs.length;
  int get visitedQues => visitedQueIdxs.length;
  int get unVisitedQues => queIdxs.length - visitedQueIdxs.length;
  bool get isLastQue => curQueIdx == queIdxs.last;
  bool get isFirstQue => curQueIdx == queIdxs.first;
  bool get isCompleted => unAnsQues == 0;
}

extension QuizInProgressSetterExt on QuizInProgress {
  /// Set the answer for the current question
  QuizInProgress setAnswer(int optionId) {
    final newAnsQueIdxs = Map<int, int>.from(ansQueIdxs);
    if (newAnsQueIdxs[curQueIdx] == optionId) {
      newAnsQueIdxs.remove(curQueIdx);
    } else {
      newAnsQueIdxs[curQueIdx] = optionId;
    }
    return copyWith(ansQueIdxs: newAnsQueIdxs);
  }

  /// Move to the next question
  QuizInProgress nextQue() {
    if (isLastQue) return this;
    final nextIdx = queIdxs.indexOf(curQueIdx) + 1;
    return copyWith(curQueIdx: queIdxs[nextIdx]);
  }

  /// Move to the previous question
  QuizInProgress prevQue() {
    if (isFirstQue) return this;
    final prevIdx = queIdxs.indexOf(curQueIdx) - 1;
    return copyWith(curQueIdx: queIdxs[prevIdx]);
  }

  /// Mark the current question as visited
  QuizInProgress markVisited() {
    if (isVisited(curQueIdx)) return this;
    final newVisitedQueIdxs = Set<int>.from(visitedQueIdxs);
    newVisitedQueIdxs.add(curQueIdx);
    return copyWith(visitedQueIdxs: newVisitedQueIdxs);
  }

  /// Create a QuizComplete object
  QuizComplete createQuizComplete({
    required Duration takenTime,
    required bool Function(int qusId, int optionId) matcher,
  }) {
    int correct = ansQueIdxs.entries.fold<int>(0, (prev, entry) {
      return prev + (matcher(entry.key, entry.value) ? 1 : 0);
    });
    return QuizComplete(
        total: totalQues,
        correct: correct,
        unAnswered: unAnsQues,
        unVisited: unVisitedQues,
        takenTime: takenTime,
        date: DateTime.now(),
        performanceBreakdown: const {});
  }
}
