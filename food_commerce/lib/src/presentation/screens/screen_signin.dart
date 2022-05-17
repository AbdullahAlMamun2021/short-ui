import 'package:flutter/material.dart';
import 'package:food_commerce/src/utils/app_colors.dart';
import 'package:food_commerce/src/utils/app_router.dart';
import 'package:food_commerce/src/utils/app_text_style.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  final TextEditingController usernameController = TextEditingController(text: "user");
  final TextEditingController passwordController = TextEditingController(text: "pass");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Let's sign you in.",
                      style: AppTextStyle.headline(context, AppColors.textColor),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Welcome back.", style:AppTextStyle.subtitle(context, AppColors.textColor)),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("You've been missed!",style: AppTextStyle.subtitle(context, AppColors.textColor,),),
                    const SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16, top: 16),
                      child: TextFormField(
                        controller: usernameController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) => (value?.isEmpty ?? true) ? "required" : null,
                        decoration: InputDecoration(
                          hintText: "phone,email or username",
                          hintStyle: AppTextStyle.caption(context, AppColors.hintColor),

                          isDense: true,
                          // Added this
                          contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                        ),
                        cursorColor: AppColors.textColor,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 16, top: 16),
                      child: TextFormField(
                        controller: passwordController,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: (value) => (value?.isEmpty ?? true) ? "required" : null,
                        decoration: InputDecoration(
                          hintText: "password",
                          hintStyle: AppTextStyle.caption(context, AppColors.hintColor),

                          isDense: true,
                          // Added this
                          contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                        ),
                        cursorColor: AppColors.textColor,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 70,
                      ),
                      Text("Don't have an account?", style:  AppTextStyle.body(context, AppColors.hintColor),),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, AppRouter.registration);
                          },
                          child: Text(
                            "Register",
                              style:  AppTextStyle.body(context, AppColors.textColor)
                          )),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        ),
                        onPressed: () {
                          if (formKey.currentState?.validate() ?? false) {
                            ///todo: navigate to dashboard
                            Navigator.pushNamed(context, AppRouter.dashboard);
                          }
                        },
                        child: Text("Sign In",  style:  AppTextStyle.body(context, AppColors.backgroundColor,)),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
