import 'package:flutter/material.dart';
import 'package:food_commerce/src/data/model/today_item.dart';
import 'package:food_commerce/src/presentation/widgets/drawer/widget_drawer.dart';
import 'package:food_commerce/src/utils/app_colors.dart';
import 'package:food_commerce/src/utils/app_text_style.dart';

class DashboardScreen extends StatelessWidget {
  final List<TodayItem> todayList = [
    TodayItem("images/img.png", "Ronald L. Wright",
        "Chief of Engineering & Technology"),
    TodayItem("images/img.png", "Marry Henderson", "Head of Human Resources"),
  ];

  DashboardScreen({Key? key}) : super(key: key);
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  int factorial(int value) {
    int total = 1;
    for (int i = 1; i <= value; i++) {
      total = total * i;
    }
    return total;
  }

  bool evenOrOddNumber(int number) {
    if (number % 2 == 0) {
      print("Number is Even");
    } else {
      print("Number is odd");
    }
    return number % 2 == 0;
  }

  bool primeNumber(int num) {
    for (int i = 2; i < num; i++) {
      if (num % i == 0) {
        return false;
      }
    }

    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      backgroundColor: AppColors.textColor,
      appBar: AppBar(
        backgroundColor: AppColors.textColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.grid_view_rounded, color: AppColors.backgroundColor),
          onPressed: () {
            _key.currentState?.openDrawer();
          },
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.logout, color: AppColors.backgroundColor)),
        ],
      ),
      drawer: const DrawerWidget(),
      drawerEdgeDragWidth: 150,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Hello William",
              style: AppTextStyle.headline3(context, AppColors.backgroundColor),
            ),
            const SizedBox(height: 8),
            Text.rich(
              TextSpan(
                text: "we have found",
                style: AppTextStyle.caption(context, AppColors.backgroundColor),
                children: [
                  TextSpan(
                    text: " 2 meetings ",
                    style:
                        AppTextStyle.body(context, AppColors.backgroundColor),
                    children: [
                      TextSpan(
                        text: "\nfor today in your schedule",
                        style: AppTextStyle.caption(
                            context, AppColors.backgroundColor),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: ListTile(
                        title: Text(
                          "Pending Projects",
                          style: AppTextStyle.caption(
                              context, AppColors.hintColor),
                        ),
                        subtitle: Text(
                          "18",
                          style: AppTextStyle.headline(
                              context, AppColors.backgroundColor),
                        ),
                        trailing: CircleAvatar(
                          child: Icon(
                            Icons.settings_outlined,
                            color: AppColors.backgroundColor,
                          ),
                          backgroundColor: AppColors.textColor,
                        ),
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (_) => Container(
                              decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(16)),
                              height: 400,
                              margin: const EdgeInsets.all(24),
                              child: ListView.builder(
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(
                                        '${index + 1} is ${evenOrOddNumber(index + 1) ? "even" : "odd"}'),
                                  );
                                },
                              ),
                            ),
                            isDismissible: true,
                          );
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 1,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: ListTile(
                        title: Text(
                          "Today Attend",
                          style: AppTextStyle.caption(
                              context, AppColors.hintColor),
                        ),
                        subtitle: Text(
                          "24",
                          style: AppTextStyle.headline(
                              context, AppColors.backgroundColor),
                        ),
                        trailing: CircleAvatar(
                          child: Icon(
                            Icons.settings_outlined,
                            color: AppColors.backgroundColor,
                          ),
                          backgroundColor: AppColors.textColor,
                        ),
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (_) => Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(25),
                                          topRight: Radius.circular(25),
                                        )),
                                    child: ListView.builder(
                                      itemCount: 1,
                                      itemBuilder: (context, index) {
                                        return ListTile(
                                          title: Text('${primeNumber(33)}'),
                                        );
                                      },
                                    ),
                                  ));
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: ListTile(
                        title: Text(
                          "Pending Projects",
                          style: AppTextStyle.caption(
                              context, AppColors.hintColor),
                        ),
                        subtitle: Text(
                          "18",
                          style: AppTextStyle.headline(
                              context, AppColors.backgroundColor),
                        ),
                        trailing: CircleAvatar(
                          child: Icon(
                            Icons.settings_outlined,
                            color: AppColors.backgroundColor,
                          ),
                          backgroundColor: AppColors.textColor,
                        ),
                        onTap: () {
                          showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (_) => Container(
                                    decoration: const BoxDecoration(
                                        color: Colors.lime,
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(30),
                                        )),
                                  ));
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  flex: 1,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    color: Colors.white60,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 8),
                      child: ListTile(
                        title: Text(
                          "Leaving",
                          style: AppTextStyle.caption(
                              context, AppColors.hintColor),
                        ),
                        subtitle: Text(
                          "9",
                          style: AppTextStyle.headline(
                              context, AppColors.backgroundColor),
                        ),
                        trailing: CircleAvatar(
                          child: Icon(
                            Icons.settings_outlined,
                            color: AppColors.backgroundColor,
                          ),
                          backgroundColor: AppColors.textColor,
                        ),
                        onTap: () {
                          showModalBottomSheet(
                            backgroundColor: Colors.transparent,
                            context: context,
                            builder: (_) => Container(
                              decoration: const BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                  )),
                              child: ListView.builder(
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return ListTile(
                                    title: Text(
                                        'Factorial of ${index + 1} is ${factorial(index + 1)}'),
                                  );
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(
              "Today",
              style: AppTextStyle.body(context, AppColors.backgroundColor),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: ListView.builder(
                  itemCount: todayList.length,
                  itemBuilder: (context, index) {
                    final TodayItem today = todayList.elementAt(index);
                    return ListTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(today.img),
                                fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(12)),
                      ),
                      title: Text(
                        today.tittle,
                        style: AppTextStyle.body(
                            context, AppColors.backgroundColor),
                      ),
                      subtitle: Text(
                        today.subTittle,
                        style: AppTextStyle.caption(
                            context, AppColors.backgroundColor),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios_rounded),
                      contentPadding: EdgeInsets.zero,
                    );
                  }),
            ),
            Center(
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Open Calendar App",
                      style: AppTextStyle.body(context, Colors.blue),
                    )))
          ],
        ),
      ),
    );
  }
}
