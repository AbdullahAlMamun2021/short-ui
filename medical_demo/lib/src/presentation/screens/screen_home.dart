import 'package:flutter/material.dart';
import 'package:medical_demo/src/utils/app_color.dart';
import 'package:medical_demo/src/utils/app_textstyle.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final tittleList = [
    "Therapist",
    "Surgeon",
    "Ophthalmologist",
    "gastroenterologist",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                title: Text(
                  "Hello Jack!",
                  style: AppTextStyle.headline(context, AppColors.primary).copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text("How are you feeling today?",
                    style: AppTextStyle.bodyLarge(context, AppColors.secondary).copyWith(fontSize: 18, fontWeight: FontWeight.bold)),
                trailing: Container(
                  height: 48,
                  width: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.black12)),
                  child: Icon(
                    Icons.notifications_outlined,
                    color: AppColors.primary,
                    size: 30,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(16),
                height: 120,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.orangeAccent.withOpacity(.2), borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  title: Text("Tip of the day", style: AppTextStyle.bodyLarge(context, Colors.orange.shade300).copyWith(fontWeight: FontWeight.bold)),
                  subtitle: Text(
                    '\nWalk in parks',
                    style: AppTextStyle.headline(context, Colors.orange.shade300).copyWith(fontWeight: FontWeight.bold),
                  ),
                  trailing: const Icon(
                    Icons.close_outlined,
                    color: Colors.orange,
                    size: 30,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Text(
                  "Find the right doctor by category",
                  style: AppTextStyle.bodyLarge(context, AppColors.primary).copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              ListView.separated(
                padding: const EdgeInsets.all(16),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (context, index) => Container(
                  height: 125,
                  decoration: BoxDecoration(color: Colors.grey.shade200, borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 5, top: 5, bottom: 5, right: 3),
                        height: 120,
                        width: 100,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage("assets/animation/a$index.jpg")),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      SizedBox(
                        width: 220,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                tittleList[index],
                                style: AppTextStyle.headline(context, AppColors.primary).copyWith(fontWeight: FontWeight.bold),
                              ),
                              subtitle: const Text("Genarel Medical Practitioner who \nspecializes in the diagnosis"),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(height: 20),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.cyan,
        selectedItemColor: Colors.orange,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
        ],
      ),
    );
  }
}
