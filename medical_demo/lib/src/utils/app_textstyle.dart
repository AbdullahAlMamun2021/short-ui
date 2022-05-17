import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {

  static TextStyle headline(BuildContext context, Color color) {
    return GoogleFonts.alice(textStyle: Theme.of(context).textTheme.headline5?.copyWith(color: color));
  }static TextStyle bodyLarge(BuildContext context, Color color) {
    return GoogleFonts.alice(textStyle: Theme.of(context).textTheme.bodyLarge?.copyWith(color: color));
  }
}
