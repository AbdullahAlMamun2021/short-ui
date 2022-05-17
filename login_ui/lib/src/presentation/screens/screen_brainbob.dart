import 'package:flutter/material.dart';
import 'package:login_ui/src/utils/app_color.dart';
import 'package:login_ui/src/utils/app_text_style.dart';

class BrainbobScreen extends StatelessWidget {
  const BrainbobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text.rich(
                  TextSpan(
                      text: "Chosse what",
                      style: AppTextStyle.braibob(context, AppColors.textColor).copyWith(fontSize: 30, fontWeight: FontWeight.normal),
                      children: [
                        TextSpan(
                          text: "\nto learn roday?",
                          style: AppTextStyle.braibob(context, AppColors.textColor).copyWith(fontSize: 30, fontWeight: FontWeight.w900),
                        ),
                      ]),
                ),
              ),
              SingleChildScrollView(

                child: TabBar(
                  indicatorPadding: EdgeInsets.zero,
                  padding: const EdgeInsets.only(left: 16.0),
                  indicator: BoxDecoration(color: Colors.black87, borderRadius: BorderRadius.circular(30)),
                  unselectedLabelColor: Colors.black,
                  labelColor: Colors.white,
                  tabs: [
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(22),
                      ),
                      child:const  Center(
                        child: Text(
                          "Brainstrom",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child:const  Center(
                        child: Text(
                          "Books",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.black12.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child:const Center(
                        child: Text(
                          "Video",
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 16),
                margin: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                height: 200,
                decoration: BoxDecoration(color: Colors.indigo.shade500, borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Vocabulary",
                          style: AppTextStyle.braibob(context, AppColors.bodyColor).copyWith(fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Text("Listen 20 new words",
                            style: AppTextStyle.braibob(context, AppColors.bodyColor).copyWith(
                              fontSize: 18,
                            )),
                        Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(color: AppColors.bodyColor, borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Start",
                                style: AppTextStyle.braibob(context, AppColors.textColor).copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              const Icon(Icons.play_circle_filled_outlined)
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 133,
                      child: Image.asset("img/g.png"),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  "Recommended",
                  style: AppTextStyle.braibob(context, AppColors.textColor).copyWith(fontSize: 18, fontWeight: FontWeight.w900),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(color: Colors.redAccent.shade100, borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.message, color: AppColors.bodyColor)),
                  title: Text("Chatting", style: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold)),
                  subtitle: Text("5 minutes", style: AppTextStyle.chat(context, Colors.grey)),
                  trailing: Icon(
                    Icons.bookmark,
                    size: 20,
                    color: AppColors.textColor,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(color: Colors.indigo, borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.headset, color: AppColors.bodyColor)),
                  title: Text("Listen", style: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold)),
                  subtitle: Text("2 minutes", style: AppTextStyle.chat(context, Colors.grey)),
                  trailing: const Icon(
                    Icons.bookmark,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.mic, color: AppColors.bodyColor)),
                  title: Text("Speak", style: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold)),
                  subtitle: Text("3 minutes", style: AppTextStyle.chat(context, Colors.grey)),
                  trailing: const Icon(
                    Icons.bookmark,
                    size: 20,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
