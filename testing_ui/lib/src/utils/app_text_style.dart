import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle headline(
    BuildContext context,
    Color color,
  ) {
    return GoogleFonts.lato(textStyle: Theme.of(context).textTheme.headline5?.copyWith(color: color));
  } static TextStyle tittle(
    BuildContext context,
    Color color,
  ) {
    return GoogleFonts.lato(textStyle: Theme.of(context).textTheme.subtitle1?.copyWith(color: color));
  }
}
