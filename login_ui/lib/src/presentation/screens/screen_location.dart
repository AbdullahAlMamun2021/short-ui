import 'package:flutter/material.dart';
import 'package:login_ui/src/utils/app_color.dart';
import 'package:login_ui/src/utils/app_text_style.dart';

class LocationScreen extends StatelessWidget {
const   LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                indent: 160,
                endIndent: 160,
                thickness: 6,
                color: Colors.grey,
              ),
              Container(
                  margin: const EdgeInsets.all(16),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16), boxShadow: const [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(0, 1),
                      blurRadius: 10,
                      spreadRadius: 0.4,
                    ),
                  ]),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 8.0, top: 10, bottom: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(Icons.trip_origin_rounded, size: 20, color: Colors.red),
                            Icon(Icons.circle, size: 5, color: AppColors.secondaryColor),
                            Icon(Icons.circle, size: 5, color: AppColors.secondaryColor),
                            Icon(Icons.circle, size: 5, color: AppColors.secondaryColor),
                            const Icon(Icons.trip_origin_rounded, size: 20, color: Colors.blue),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0, right: 16),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: "Form",
                                  labelStyle: AppTextStyle.chat(context, AppColors.secondaryColor),
                                  hintText: 'G-32,Mohammadpur',
                                  hintStyle: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 16.0),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: "To",
                                  labelStyle: AppTextStyle.chat(context, AppColors.secondaryColor),
                                  border: InputBorder.none,
                                  suffixIcon: const Icon(
                                    Icons.map_outlined,
                                    color: Colors.black,
                                  ),
                                ),
                                cursorColor: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 8, bottom: 8),
                child: Text(
                  "Favourite places",
                  style: AppTextStyle.chat(context, Colors.grey),
                ),
              ),
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xffeeeeee),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.home_outlined, color: AppColors.textColor),
                ),
                title: Text(
                  "Home",
                  style: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "St.Bolshaya Polyanka,31",
                  style: AppTextStyle.chat(context, Colors.grey).copyWith(fontSize: 12),
                ),
              ),
              const Divider(
                thickness: 1,
                indent: 80,
                endIndent: 20,
              ),
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xffeeeeee),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.work_outline_outlined, color: AppColors.textColor),
                ),
                title: Text(
                  "Job",
                  style: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Bolshaya ordynka ,22/1",
                  style: AppTextStyle.chat(context, Colors.grey).copyWith(fontSize: 12),
                ),
              ),
              const Divider(
                thickness: 1,
                indent: 80,
                endIndent: 20,
              ),
              ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xffeeeeee),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(Icons.storefront_outlined, color: AppColors.textColor),
                ),
                title: Text(
                  "Store",
                  style: AppTextStyle.chat(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Rozhdestvenka 5/7",
                  style: AppTextStyle.chat(context, Colors.grey).copyWith(fontSize: 12),
                ),
              ),
              const Divider(
                thickness: 1,
                indent: 80,
                endIndent: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
