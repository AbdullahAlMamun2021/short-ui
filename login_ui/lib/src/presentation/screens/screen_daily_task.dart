import 'package:flutter/material.dart';
import 'package:login_ui/src/utils/app_color.dart';
import 'package:login_ui/src/utils/app_text_style.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({Key? key}) : super(key: key);

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff311b92),
      appBar: AppBar(
        backgroundColor: const Color(0xff311b92),
        leading: const Icon(Icons.clear_all_outlined),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 32),
            child: Container(
              margin: const EdgeInsets.all(8),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage(
                    "img/leo.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const CircularProgressIndicator(
                color: Colors.white,
                strokeWidth: 2,
                backgroundColor: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Hi Ghulam",
                style: AppTextStyle.braibob(context, AppColors.bodyColor).copyWith(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: Text("6 Tasks are pending", style: AppTextStyle.body(context, Colors.white60)),
            ),
            Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(16),
                  height: 120,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white.withOpacity(.2), borderRadius: BorderRadius.circular(20), boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 1),
                      blurRadius: 10,
                      spreadRadius: 0.4,
                    ),
                  ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text("Mobile App Design", style: AppTextStyle.braibob(context, AppColors.bodyColor).copyWith(fontSize: 18)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Text("Mike and Anita", style: AppTextStyle.braibob(context, Colors.white60)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Container(
                          margin: const EdgeInsets.all(8),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                              image: AssetImage(
                                "img/leo.jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const CircularProgressIndicator(
                            color: Colors.white,
                            strokeWidth: 2,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 65,
                  top: 75,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 32),
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/leo.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: const CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 40,
                  right: 50,
                  child: Text(
                    "Now",
                    style: AppTextStyle.body(context, Colors.white60),
                  ),
                )
              ],
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 10),
              leading: Text(
                "Monthly Review",
                style: AppTextStyle.braibob(context, AppColors.bodyColor).copyWith(
                  fontSize: 20,
                ),
              ),
              trailing: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(color: Colors.tealAccent, borderRadius: BorderRadius.circular(50), boxShadow: const [
                  BoxShadow(color: Colors.black12, offset: Offset(0, 0.4), blurRadius: 3, spreadRadius: 0.1),
                ]),
                child: Icon(
                  Icons.date_range_outlined,
                  color: AppColors.bodyColor,
                  size: 18,
                ),
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      width: 155,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "22",
                            style: AppTextStyle.braibob(context, AppColors.bodyColor).copyWith(fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 20),
                          Text("Done", style: AppTextStyle.braibob(context, Colors.white60).copyWith()),
                        ],
                      )),
                    ),
                    Container(
                      width: 155,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "10",
                            style: AppTextStyle.braibob(context, AppColors.bodyColor).copyWith(fontSize: 25, fontWeight: FontWeight.bold),
                          ),const SizedBox(height: 20),
                          Text("Ongoing", style: AppTextStyle.braibob(context, Colors.white60).copyWith()),
                        ],
                      )),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: 155,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "7",
                            style: AppTextStyle.braibob(context, AppColors.bodyColor).copyWith(fontSize: 25, fontWeight: FontWeight.bold),
                          ),const SizedBox(height: 20),
                          Text("In Progress", style: AppTextStyle.braibob(context, Colors.white60).copyWith()),
                        ],
                      )),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      width: 155,
                      height: 140,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "12",
                            style: AppTextStyle.braibob(context, AppColors.bodyColor).copyWith(fontSize: 25, fontWeight: FontWeight.bold),
                          ),const SizedBox(height: 20),
                          Text("Waiting for review", style: AppTextStyle.braibob(context, Colors.white60).copyWith()),
                        ],
                      )),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff311b92),
        items: const [
          BottomNavigationBarItem(backgroundColor: Color(0xff311b92), icon: Icon(Icons.home_outlined), label: ""),
          BottomNavigationBarItem(
              backgroundColor: Color(0xff311b92),
              icon: Icon(
                Icons.description_outlined,
                color: Colors.blue,
              ),
              label: ""),
          BottomNavigationBarItem(backgroundColor: Color(0xff311b92), icon: Icon(Icons.person_outlined), label: ""),
          BottomNavigationBarItem(backgroundColor: Color(0xff311b92), icon: Icon(Icons.notifications_outlined), label: ""),
        ],
      ),
    );
  }
}
