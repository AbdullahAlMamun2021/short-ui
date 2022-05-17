import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {
  static TextStyle headline(BuildContext context, Color color) {
    return GoogleFonts.bebasNeue(textStyle: Theme.of(context).textTheme.headline5?.copyWith(color: color));
  }

  static TextStyle subtittle(BuildContext context, Color color) {
    return GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.subtitle1?.copyWith(color: color));
  }

  static TextStyle body(BuildContext context, Color color) {
    return GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(color: color));
  }

  static TextStyle chat(BuildContext context, Color color) {
    return GoogleFonts.merriweather(textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(color: color));
  }

  static TextStyle braibob(BuildContext context, Color color) {
    return GoogleFonts.arvo(textStyle: Theme.of(context).textTheme.bodyText2?.copyWith(color: color));
  }

  static TextStyle caption(BuildContext context, Color color) {
    return GoogleFonts.arvo(textStyle: Theme.of(context).textTheme.caption?.copyWith(color: color));
  }

  static TextStyle tittle(BuildContext context, Color color) {
    return GoogleFonts.abel(textStyle: Theme.of(context).textTheme.headline3?.copyWith(color: color));
  }
}
