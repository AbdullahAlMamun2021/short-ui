import 'package:flutter/material.dart';
import 'package:food_commerce/src/presentation/screens/screen_home.dart';
import 'package:food_commerce/src/utils/app_colors.dart';
import 'package:food_commerce/src/utils/app_router.dart';

void main() {
  final AppRouter router = AppRouter();
  runApp(MyApp(router: router));
}

class MyApp extends StatelessWidget {
  final AppRouter router;

  const MyApp({Key? key, required this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: AppColors.backgroundColor,
        backgroundColor: AppColors.backgroundColor,
        appBarTheme: AppBarTheme(
          color: AppColors.backgroundColor,
          elevation: 0,
          iconTheme: IconThemeData(color: AppColors.textColor),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            primary: AppColors.backgroundColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            padding: const EdgeInsets.all(16),
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: AppColors.secondaryColor,
          filled: true,
          isDense: true,
          contentPadding: const EdgeInsets.all(16),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide(color: AppColors.hintColor, width: .5)),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.hintColor, width: .5),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.hintColor, width: .5),
          ),
          errorBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: const BorderSide(color: Colors.orange, width: .5)),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.orange, width: .5),
          ),
        ),
      ),
      onGenerateRoute: (settings) => router.onGenerateRoute(settings),
      home: const HomeScreen(),
    );
  }
}
