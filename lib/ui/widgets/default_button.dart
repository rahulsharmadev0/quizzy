import 'package:flutter/material.dart';

class DefaultButton extends StatefulWidget {
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
  State<DefaultButton> createState() => _DefaultButtonState();
}

class _DefaultButtonState extends State<DefaultButton> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    var color = widget.color ?? Theme.of(context).primaryColor;
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovering = true),
      onExit: (_) => setState(() => _isHovering = false),
      child: InkWell(
        onHover: (value) => setState(() => _isHovering = value),
        onTap: widget.onTap,
        splashColor: Colors.white30, // Tap effect
        highlightColor: Colors.white10, // Tap effect
        borderRadius: BorderRadius.circular(100),
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: widget.dense ? 12 : 16),
          alignment: Alignment.center,
          clipBehavior: Clip.hardEdge,
          decoration: ShapeDecoration(
            color: color,
            shape: RoundedRectangleBorder(
              side: BorderSide(width: 3),
              borderRadius: BorderRadius.circular(100),
            ),
            shadows: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 0,
                offset: Offset(0, _isHovering ? 0 : 3),
                spreadRadius: 0,
              )
            ],
          ),
          child: Text(
            widget.text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: widget.dense ? 18 : 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
