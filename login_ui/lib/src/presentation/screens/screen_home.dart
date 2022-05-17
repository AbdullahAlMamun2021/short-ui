import 'package:flutter/material.dart';
import 'package:login_ui/src/utils/app_color.dart';
import 'package:login_ui/src/utils/app_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Stack(
              children: [
                Image.asset(
                  "img/background.jpg",
                  width: MediaQuery.of(context).size.width,
                  height: 440,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 150,
                  left: 30,
                  child: Text.rich(
                    TextSpan(
                      text: "Create better \nTogether .",
                      style: AppTextStyle.headline(context, AppColors.mTextColor),
                      children: [
                        TextSpan(
                            text: ""
                                "\nJoin Our Community",
                            style: AppTextStyle.subtittle(context, AppColors.secondaryColor))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
                color: Colors.green.shade100,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      "Login",
                      style: AppTextStyle.subtittle(context, AppColors.textColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextFormField(
                      decoration: InputDecoration(
                          fillColor: AppColors.bodyColor,
                          hintText: "Email",
                          hintStyle: AppTextStyle.subtittle(context, AppColors.secondaryColor),
                          suffixIcon: const Icon(Icons.arrow_forward_ios_rounded)),
                      cursorColor: Colors.black,
                      style: TextStyle(color: AppColors.bodyColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextFormField(
                      decoration: InputDecoration(
                          fillColor: AppColors.bodyColor,
                          hintText: "Password",
                          hintStyle: AppTextStyle.subtittle(context, AppColors.secondaryColor),
                          suffixIcon: const Icon(Icons.remove_red_eye)),
                      cursorColor: Colors.black,
                      style: AppTextStyle.subtittle(context, AppColors.bodyColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                        ),
                        onPressed: () {},
                        child: Text(
                          "Sign In",
                          style: AppTextStyle.subtittle(context, AppColors.secondaryColor),
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password",
                        style: AppTextStyle.subtittle(context, AppColors.secondaryColor),
                      )),
                  Center(
                    child: Text.rich(
                      TextSpan(text: "Don't have an account?", style: AppTextStyle.body(context, AppColors.secondaryColor), children: [
                        TextSpan(
                          text: "Sign up",
                          style: AppTextStyle.subtittle(context, AppColors.textColor),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
