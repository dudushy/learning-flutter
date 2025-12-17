import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({
    super.key,
    required this.text,
    required this.textColor,
    required this.textSize,
  });

  final String text;
  final Color textColor;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: textColor,
        fontSize: textSize,
      ),
    );
  }
}
