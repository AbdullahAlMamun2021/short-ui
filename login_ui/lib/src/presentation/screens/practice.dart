import 'package:flutter/material.dart';
import 'package:login_ui/src/utils/app_color.dart';
import 'package:login_ui/src/utils/app_text_style.dart';

class Practice extends StatefulWidget {
  const Practice({Key? key}) : super(key: key);

  @override
  _PracticeState createState() => _PracticeState();
}

class _PracticeState extends State<Practice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
      appBar: AppBar(
        leading: const Icon(
          Icons.paragliding_outlined,
          color: Colors.blue,
          size: 40,
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: Text(
                    "Step 1 of 3 ",
                    style: AppTextStyle.subtittle(context, Colors.purple),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16, left: 16, right: 16),
                  child: LinearProgressIndicator(
                    value: .25,
                    backgroundColor: AppColors.secondaryColor.withOpacity(.1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                  ),
                  child: Text(
                    "Log in",
                    style: AppTextStyle.headline(context, AppColors.secondaryColor).copyWith(fontSize: 32),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide.none,

                        ),
                        hintText: "Name",
                        hintStyle: AppTextStyle.subtittle(context, AppColors.secondaryColor),
                        suffixIcon: const Icon(Icons.arrow_forward_ios_rounded)),
                    cursorColor: Colors.black,
                    style: TextStyle(color: AppColors.bodyColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, bottom: 0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade100,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16),
                            borderSide: BorderSide.none

                        ),
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
                        "Enter Dribble",
                        style: AppTextStyle.subtittle(context, AppColors.bodyColor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot the Password",
                      style: AppTextStyle.subtittle(context, AppColors.secondaryColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 450,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 200,
              decoration: const BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  )),
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 150, right: 150),
                    child: Divider(
                      thickness: 4,
                      color: Colors.black12,
                    ),
                  ),
                  Text(
                    "Last Members",
                    style: AppTextStyle.headline(context, AppColors.headlineColor).copyWith(fontSize: 20),
                  ),
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    title: Text(
                      "Imrose Bhuiyan",
                      style: AppTextStyle.subtittle(context, AppColors.bodyColor),
                    ),
                    subtitle: Text(
                      "Imrosebhuiyan@gmail.com",
                      style: AppTextStyle.body(context, AppColors.secondaryColor),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.secondaryColor,
                    ),
                  ),
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    title: Text(
                      "Molly Swift",
                      style: AppTextStyle.subtittle(context, AppColors.bodyColor),
                    ),
                    subtitle: Text(
                      "Mollygirl@gmail.com",
                      style: AppTextStyle.body(context, AppColors.secondaryColor),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: AppColors.secondaryColor,
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
