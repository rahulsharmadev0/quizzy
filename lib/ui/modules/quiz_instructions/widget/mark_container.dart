import 'package:flutter/material.dart';

class MarkingContainers extends StatelessWidget {
  final int positiveMarks;
  final int negativeMarks;

  const MarkingContainers({
    super.key,
    required this.positiveMarks,
    required this.negativeMarks,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Expanded(child: _MarkContainer(-negativeMarks.abs())),
        Expanded(child: _MarkContainer(positiveMarks.abs())),
      ],
    );
  }
}

class _MarkContainer extends StatelessWidget {
  final int value;
  const _MarkContainer(this.value);

  bool get isPositive => !value.isNegative;

  @override
  Widget build(BuildContext context) {
    final bgColor = isPositive ? Color(0xFFE3FFD9) : Color(0xFFFFDDDD);
    final textColor = isPositive ? Color(0xFF016900) : Color(0xFFB40000);
    final label = isPositive ? 'Correct Answer' : 'Wrong Answer';
    return Container(
      padding: const EdgeInsets.all(16),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: bgColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 4),
          borderRadius: BorderRadius.circular(24),
        ),
        shadows: [
          BoxShadow(
            color: Color(0xFF000000),
            blurRadius: 0,
            offset: Offset(0, 3),
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '${isPositive ? '+' : ''}$value',
            style: TextStyle(
              color: textColor,
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: TextStyle(color: textColor),
          ),
        ],
      ),
    );
  }
}
