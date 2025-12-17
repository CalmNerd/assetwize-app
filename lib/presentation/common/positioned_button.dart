import 'package:flutter/material.dart';

class PositionedButton extends StatelessWidget {
  final String label;
  final IconData? icon;
  final VoidCallback onPressed;
  final Color? buttonColor;
  final Color? textColor;
  final double? top, right, bottom, left;
  final FontWeight? fontWeight;
  final double? fontSize;

  const PositionedButton({
    super.key,
    required this.label,
    this.icon,
    required this.onPressed,
    this.buttonColor,
    this.textColor,
    this.fontWeight,
    this.fontSize,
    this.top,
    this.right,
    this.bottom,
    this.left,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      right: right,
      bottom: bottom,
      left: left,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? Colors.white,
          foregroundColor: textColor ?? Colors.grey[800],
        ),
        child: Row(
          children: [
            icon != null
                ? Icon(icon, size: 16, color: textColor)
                : const SizedBox.shrink(),
            icon != null ? const SizedBox(width: 4) : const SizedBox.shrink(),
            Text(
              label,
              style: TextStyle(
                fontSize: fontSize ?? 12,
                fontWeight: fontWeight ?? FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
