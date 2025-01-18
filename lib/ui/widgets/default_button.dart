import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final bool dense;
  final VoidCallback? onTap;
  final Color? color;
  const DefaultButton({
    super.key,
    required this.text,
    this.dense = true,
    this.onTap,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    var color = this.color ?? Theme.of(context).primaryColor;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: dense ? 12 : 24),
        alignment: Alignment.center,
        clipBehavior: Clip.antiAlias,
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 3),
            borderRadius: BorderRadius.circular(100),
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
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
