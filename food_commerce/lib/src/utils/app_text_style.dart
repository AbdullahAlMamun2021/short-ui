import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle headline(
    BuildContext context,
    Color color,
  ) {
    return GoogleFonts.ubuntu(
        textStyle:
            Theme.of(context).textTheme.headline4?.copyWith(color: color));
  }

  static TextStyle headline3(
    BuildContext context,
    Color color,
  ) {
    return GoogleFonts.ubuntu(
        textStyle:
            Theme.of(context).textTheme.headline3?.copyWith(color: color));
  }

  static TextStyle subtitle(BuildContext context, Color color) {
    return GoogleFonts.ubuntu(
        textStyle:
            Theme.of(context).textTheme.subtitle1?.copyWith(color: color));
  }

  static TextStyle body(BuildContext context, Color color) {
    return GoogleFonts.ubuntu(
        textStyle:
            Theme.of(context).textTheme.bodyText1?.copyWith(color: color));
  }

  static TextStyle caption(BuildContext context, Color color) {
    return GoogleFonts.ubuntu(
        textStyle: Theme.of(context).textTheme.caption?.copyWith(color: color));
  }
}
