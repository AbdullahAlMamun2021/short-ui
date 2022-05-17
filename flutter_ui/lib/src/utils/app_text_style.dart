import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle {

    static TextStyle headline(BuildContext context, Color color) {
      return GoogleFonts.roboto(textStyle: Theme.of(context).textTheme.caption?.copyWith(color: color));
    }
  }

