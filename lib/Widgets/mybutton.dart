import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RoundButton extends StatelessWidget {
  final Color backgroundColor;
  final Color borderColor;
  final String text;
  final double height;
  final double width;
  final double radius;
  final VoidCallback onClick;
  final bool loading;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const RoundButton({
    super.key,
    required this.text,
    required this.backgroundColor,
    required this.borderColor,
    required this.height,
    required this.width,
    required this.radius,
    required this.onClick,
    this.loading = false,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(
          color: borderColor,
        ),
      ),
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: loading ? null : onClick,
        child: Center(
          child: loading
              ? CircularProgressIndicator(
                  color: color,
                  strokeWidth: 3,
                )
              : Text(
                  text,
                  style: GoogleFonts.itim(
                    fontSize: fontSize,
                    fontWeight: fontWeight,
                    color: color,
                  ),
                ),
        ),
      ),
    );
  }
}

class RoundButton3 extends StatelessWidget {
  final Color textColor;
  final Color backgroundColor;
  final Color borderColor;
  final Widget child;
  final double height;
  final double width;
  final double radius;
  final VoidCallback onClick;
  final bool loading;

  const RoundButton3({
    super.key,
    required this.child,
    required this.textColor,
    required this.backgroundColor,
    required this.borderColor,
    required this.height,
    required this.width,
    required this.radius,
    required this.onClick,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      onTap: loading ? null : onClick,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(radius),
          border: Border.all(
            width: 1.5,
            color: borderColor,
          ),
        ),
        child: Center(
          child: loading
              ? CircularProgressIndicator(
                  color: textColor,
                  strokeWidth: 3,
                )
              : child,
        ),
      ),
    );
  }
}
