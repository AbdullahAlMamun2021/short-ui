import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';
import 'package:flutter/material.dart';

import 'package:food_commerce/src/utils/app_colors.dart';
import 'package:food_commerce/src/utils/app_router.dart';
import 'package:food_commerce/src/utils/app_text_style.dart';

class HomeScreen extends StatefulWidget {
  static const String route = "/home";

  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("images/img.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 42),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Enterprise Team  Collaboration.",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.headline(context, AppColors.textColor),
                ),
                const SizedBox(height: 12),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and industry. Lorem Ipsum has been the standard text Lorem ipsum dolor sit amet.",
                  textAlign: TextAlign.center,
                  style: AppTextStyle.caption(context, AppColors.hintColor),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CustomSlidingSegmentedControl<int>(
                children: {
                  0: Text('Login',style: AppTextStyle.subtitle(context, AppColors.backgroundColor)),
                  1: Text('Register',style: AppTextStyle.subtitle(context, AppColors.textColor)),
                },
                duration: const Duration(milliseconds: 200),
                radius: 30.0,
                onValueChanged: (index) {
                  if (index == 0) {
                    Navigator.of(context).pushNamed(AppRouter.signIn);
                  } else {
                    Navigator.of(context).pushNamed(AppRouter.registration);
                  }
                },
                backgroundColor: AppColors.secondaryColor,
                thumbColor: AppColors.textColor,
                isStretch: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
