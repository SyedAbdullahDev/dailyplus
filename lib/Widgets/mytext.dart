import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Text mytext(String title, double fontSize, FontWeight fontWeight, Color color,
    TextAlign align) {
  return Text(
    title,
    textAlign: align,
    style: GoogleFonts.itim(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    ),
  );
}