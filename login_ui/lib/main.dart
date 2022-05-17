import 'package:flutter/material.dart';
import 'package:login_ui/src/presentation/screens/screen_beach.dart';
import 'package:login_ui/src/presentation/screens/screen_daily_task.dart';
import 'package:login_ui/src/presentation/screens/screen_profile.dart';
import 'src/presentation/screens/practice.dart';
import 'src/presentation/screens/screen_brainbob.dart';
import 'src/presentation/screens/screen_home.dart';
import 'src/presentation/screens/screen_location.dart';
import 'src/presentation/screens/screen_projects.dart';
import 'src/utils/app_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // inputDecorationTheme: InputDecorationTheme(
        //   fillColor: Colors.black12,
        //
        //   contentPadding: const EdgeInsets.all(16),
        //   border: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(12),
        //   ),
        // ),
        appBarTheme: AppBarTheme(color: AppColors.bodyColor, elevation: 0),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.all(16),
          ),
        ),
      ),
      home:  ProjectScreen(),
    );
  }
}
