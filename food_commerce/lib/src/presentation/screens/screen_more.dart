import 'package:flutter/material.dart';
import 'package:food_commerce/src/utils/app_colors.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text("More"),
      ),
    );
  }
}
