import 'package:flutter/material.dart';

class PrimaryTextButton extends StatelessWidget {
  const PrimaryTextButton({super.key,
    required this.onPressed,
    required this.title,
     this.fontSize,
     this.textColor, this.textStyle,

  });

  final Function() onPressed;
  final String title;
  final double? fontSize;
  final Color? textColor;
  final TextStyle?textStyle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        title,
        style:textStyle?? TextStyle(
          fontSize: fontSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }
}