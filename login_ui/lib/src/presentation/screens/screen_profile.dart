import 'package:flutter/material.dart';
import 'package:login_ui/src/utils/app_color.dart';
import 'package:login_ui/src/utils/app_text_style.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: Icon(Icons.arrow_back_ios_new_outlined, color: AppColors.textColor),
        title: Text(
          "Profile",
          style: AppTextStyle.chat(context, AppColors.textColor),
        ),
        centerTitle: true,
        actions: [Icon(Icons.more_horiz_outlined, color: AppColors.textColor)],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Stack(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("img/leo.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    height: 120,
                    width: 120,
                    child: CircularProgressIndicator(
                      strokeWidth: 4,
                      backgroundColor: Colors.grey.shade200,
                    ),
                  )),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Lionel Messi",
            style: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          Text("@Dr.smile", style: AppTextStyle.chat(context, AppColors.textColor.withOpacity(.3))),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text("126/750", style: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold)),
                  Text("Scans", style: AppTextStyle.chat(context, AppColors.textColor.withOpacity(.3)))
                ],
              ),
              Column(
                children: [
                  Text("1/6", style: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold)),
                  Text("Users", style: AppTextStyle.chat(context, AppColors.textColor.withOpacity(.3)))
                ],
              ),
              Column(
                children: [
                  Text("893/2500", style: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold)),
                  Text("Codes", style: AppTextStyle.chat(context, AppColors.textColor.withOpacity(.3)))
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 30, bottom: 30),
            margin: const EdgeInsets.only(top: 30, left: 10, right: 10),
            decoration: BoxDecoration(color: AppColors.bodyColor, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                ListTile(
                  leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.settings, color: AppColors.textColor)),
                  title: Text("Settings", style: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                    color: AppColors.textColor,
                  ),
                ),
                ListTile(
                  leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.payment_sharp, color: AppColors.textColor)),
                  title:
                      Text("Billing Details", style: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                    color: AppColors.textColor,
                  ),
                ),
                ListTile(
                  leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.person_sharp, color: AppColors.textColor)),
                  title:
                      Text("User Management", style: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold)),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 18,
                    color: AppColors.textColor,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Divider(
                    thickness: 2,
                    color: Colors.black26.withOpacity(.1),
                  ),
                ),
                ListTile(
                  leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.info_sharp, color: AppColors.textColor)),
                  title: Text("Information", style: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold)),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, size: 18, color: AppColors.textColor),
                ),
                ListTile(
                  leading: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(color: Colors.black12, borderRadius: BorderRadius.circular(10)),
                      child: Icon(Icons.logout_sharp, color: AppColors.textColor)),
                  title: Text("Log Out", style: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold)),
                  trailing: Icon(Icons.arrow_forward_ios_rounded, size: 18, color: AppColors.textColor),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
