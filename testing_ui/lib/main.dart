import 'package:flutter/material.dart';
import 'package:testing_ui/src/presentation/widgets/widget_sliver_appbar.dart';

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
        scaffoldBackgroundColor:Colors.black,

        appBarTheme: const AppBarTheme(
          color: Colors.black
        )
      ),
      home:const  SliverWidget(),
    );
  }
}
