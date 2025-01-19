import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzy/logic/models/quiz_outcome.dart';
import 'package:quizzy/ui/utils/frame_limit.dart';
import 'package:confetti/confetti.dart'; // Add this import

class QuizCompleteScreen extends StatefulWidget {
  final QuizOutcome quizOutcome;
  const QuizCompleteScreen({super.key, required this.quizOutcome});

  @override
  State<QuizCompleteScreen> createState() => _QuizCompleteScreenState();
}

typedef _ConfettiConfig = ({int sec, double ef, int noOfPts, double maxBF, double minBF});

class _QuizCompleteScreenState extends State<QuizCompleteScreen> {
  late final ConfettiController _confettiCtrl;
  late final _ConfettiConfig conffi;
  final colors = const [
    Colors.green,
    Colors.blue,
    Colors.pink,
    Colors.orange,
    Colors.purple,
    Colors.red,
    Colors.yellow,
    Colors.cyan,
    Colors.lime,
    Colors.indigo
  ];

  @override
  void initState() {
    super.initState();
    conffi = switch (widget.quizOutcome.percentage) {
      >= 90 => (sec: 20, ef: .1, noOfPts: 30, maxBF: 30, minBF: 10),
      >= 70 => (sec: 15, ef: .1, noOfPts: 20, maxBF: 30, minBF: 10),
      >= 50 => (sec: 10, ef: .05, noOfPts: 10, maxBF: 10, minBF: 5),
      >= 20 => (sec: 5, ef: .02, noOfPts: 3, maxBF: 10, minBF: 5),
      _ => (sec: 1, ef: .02, noOfPts: 1, maxBF: 5, minBF: 1)
    };

    _confettiCtrl = ConfettiController(duration: Duration(seconds: conffi.sec));
    if (!widget.quizOutcome.percentage.isNegative) _confettiCtrl.play(); // Add this line
  }

  @override
  void dispose() {
    _confettiCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final image = const DecorationImage(image: AssetImage('assets/images/background.jpg'), fit: BoxFit.cover);
    final confettiWidget = ConfettiWidget(
      confettiController: _confettiCtrl,
      blastDirectionality: BlastDirectionality.explosive,
      emissionFrequency: conffi.ef,
      numberOfParticles: conffi.noOfPts,
      maxBlastForce: conffi.maxBF,
      minBlastForce: conffi.minBF,
      colors: colors,
    );
    return Scaffold(
      body: Stack(
        // Wrap with Stack
        children: [
          Container(
            constraints: const BoxConstraints.expand(),
            decoration: BoxDecoration(image: image),
            child: FrameLimit(
              child: Column(
                spacing: 16,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  QuizFinishImage(
                    widget.quizOutcome.percentage,
                  ),
                  QuizScoreTitle(widget.quizOutcome),
                  QuizScoreContainers(widget.quizOutcome),
                  QuizDetailedBreakdown(widget.quizOutcome),
                  FilledButton(
                    onPressed: () => context.go('/'),
                    child: const Text('Finish'),
                  ),
                ],
              ),
            ),
          ),
          // Top Left
          Align(alignment: Alignment.topLeft, child: confettiWidget),
          // Top Right
          Align(alignment: Alignment.topRight, child: confettiWidget),
        ],
      ),
    );
  }
}

///--------------------------------------- Widgets ---------------------------------------///

class QuizDetailedBreakdown extends StatelessWidget {
  final QuizOutcome out;
  const QuizDetailedBreakdown(this.out, {super.key});

  @override
  Widget build(BuildContext context) {
    final detail = '''
 • Percentage: ${out.percentage}%
 • Correct answer: ${out.correct}/${out.total}
 • Wrong answer: ${out.wrong}/${out.total}
 • Visited Questions: ${out.visited}/${out.total}
 • Attempted Questions: ${out.attempted}/${out.total}
 • Time Taken: ${out.formattedTime}''';

    return Container(
      width: double.infinity,
      constraints: const BoxConstraints(maxWidth: 400),
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        color: Colors.white24,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
      child: Text.rich(
        TextSpan(
          children: [
            const TextSpan(
              text: 'Detailed Breakdown:\n',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            TextSpan(
              text: detail,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class QuizFinishImage extends StatelessWidget {
  final double scale;
  const QuizFinishImage(this.scale, {super.key});

  @override
  Widget build(BuildContext context) {
    final data = switch (scale) {
      < 30 => '🥲',
      < 50 => '😁',
      < 70 => '🥳',
      _ => '🏆',
    };
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(data, style: const TextStyle(fontSize: 128)),
    );
  }
}

class QuizScoreTitle extends StatelessWidget {
  final QuizOutcome out;

  const QuizScoreTitle(this.out, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '${out.score}/${out.totalScore}\nYou scored',
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 36, fontWeight: FontWeight.w600, height: 1.4),
    );
  }
}

class QuizScoreContainers extends StatelessWidget {
  final QuizOutcome out;

  const QuizScoreContainers(this.out, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Expanded(child: _QuizScoreContainer.pos(out.correct, out.positiveScore)),
        Expanded(child: _QuizScoreContainer.neg(out.wrong, out.negativeScore)),
      ],
    );
  }
}

class _QuizScoreContainer extends StatelessWidget {
  final int qCount;
  final int points;
  final bool isPositive;
  const _QuizScoreContainer.pos(this.qCount, this.points) : isPositive = true;
  const _QuizScoreContainer.neg(this.qCount, this.points) : isPositive = false;

  @override
  Widget build(BuildContext context) {
    final bgColor = isPositive ? const Color(0xFFE3FFD9) : const Color(0xFFFFDDDD);
    final textColor = isPositive ? const Color(0xFF016900) : const Color(0xFFB40000);
    final label = isPositive ? '(Correct Answer)' : '(Wrong Answer)';
    final title = isPositive ? '$points Points gain ⇡' : '$points Points lose ⇣';
    return Container(
      padding: const EdgeInsets.all(16),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: bgColor,
        shape:
            RoundedRectangleBorder(side: const BorderSide(width: 4), borderRadius: BorderRadius.circular(24)),
        shadows: const [BoxShadow(color: Color(0xFF000000), blurRadius: 0, offset: Offset(0, 3))],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$qCount',
            style: TextStyle(color: textColor, fontSize: 24, fontWeight: FontWeight.w400),
          ),
          Text(
            label,
            style: TextStyle(color: textColor, fontSize: 11),
          ),
          Text(
            title,
            style: TextStyle(
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
