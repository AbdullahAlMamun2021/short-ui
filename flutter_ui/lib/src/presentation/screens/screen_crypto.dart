import 'package:flutter/material.dart';
import 'package:flutter_ui/src/utils/app_colors.dart';
import 'package:flutter_ui/src/utils/app_text_style.dart';

import '../widgets/widget_singlechildscrobble.dart';

class CryptoScreen extends StatelessWidget {
  const CryptoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffebee),
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Welcome, Brett",
                        style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2,
                              spreadRadius: 2,
                              offset: Offset(0, 1),
                            )
                          ],
                          border: Border.all(
                            width: 2,
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp'),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "\$8,649.23",
                    style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "+83% all time",
                    style: AppTextStyle.headline(context, Colors.green).copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 170,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 30,
                      spreadRadius: 0.5,
                      offset: const Offset(0, 1),
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Assets",
                      style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        child: Icon(
                          Icons.pages,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "Chainlink",
                        style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "32 LINK",
                        style: AppTextStyle.headline(context, AppColors.subTittleColor).copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "\$713.28",
                              style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "+15.43%",
                            style: AppTextStyle.headline(context, Colors.green).copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.settings_input_component,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "Compound",
                        style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "18.2 COMP",
                        style: AppTextStyle.headline(context, AppColors.subTittleColor).copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "\$4,167.25",
                              style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "-4.43%",
                            style: AppTextStyle.headline(context, Colors.red).copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const CircleAvatar(
                        backgroundColor: Colors.purple,
                        child: Icon(
                          Icons.workspaces_outline,
                          color: Colors.white,
                        ),
                      ),
                      title: Text(
                        "Radium",
                        style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(
                        "62.34 RAD",
                        style: AppTextStyle.headline(context, AppColors.subTittleColor).copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      trailing: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              "\$654.57",
                              style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Text(
                            "+23.95%",
                            style: AppTextStyle.headline(context, Colors.green).copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        "See all assets",
                        style: AppTextStyle.headline(context, Colors.red).copyWith(fontSize: 15,fontWeight: FontWeight.w600),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0, bottom: 16.0),
                      child: Text(
                        "Recommended to Buy",
                        style: AppTextStyle.headline(context, Colors.black).copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SingleChildScrobbleWidget()
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,

        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        unselectedItemColor: Colors.grey,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_max_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.access_time_rounded), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none_rounded), label: ""),
        ],
      ),
    );
  }
}
