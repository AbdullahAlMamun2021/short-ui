import 'package:flutter/material.dart';
import 'package:food_commerce/src/utils/app_colors.dart';

class NoticeScreen extends StatelessWidget {


  const NoticeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.textColor,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title:const  Text("Notice"),
      ),
    );
  }
}
