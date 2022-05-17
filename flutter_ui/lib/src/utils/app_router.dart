import 'package:flutter/material.dart';
import 'package:flutter_ui/src/presentation/screens/screen_ripple.dart';

class AppRouter {
  static const String ripple = "/ripple";

  onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case ripple:
        return MaterialPageRoute(builder: (_) =>const  RippleScreen());
    }
  }
}
