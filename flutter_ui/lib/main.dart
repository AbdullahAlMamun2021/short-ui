import 'package:flutter/material.dart';
import 'package:flutter_ui/src/utils/app_router.dart';
import 'src/presentation/screens/screen_music.dart';

void main() {
  final AppRouter router = AppRouter();
  runApp(MyApp(router: router));
}

class MyApp extends StatelessWidget {
  final AppRouter router;

  const MyApp({Key? key, required this.router}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: (settings) => router.onGenerateRoute(settings),
      home: const MusicScreen(),
    );
  }
}
