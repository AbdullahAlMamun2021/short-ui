import 'package:flutter/material.dart';
import 'package:flutter_ui/src/utils/app_colors.dart';
import 'package:flutter_ui/src/utils/app_text_style.dart';

import '../widgets/widget_Stack_Fest.dart';

class FestScreen extends StatelessWidget {
  const FestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 20, bottom: 20),
                          height: 40,
                          width: 150,
                          decoration: BoxDecoration(
                              color: const Color(0xffe8eaf6),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: const [
                                BoxShadow(color: Color(0xff9fa8da), spreadRadius: 5, blurRadius: 40, offset: Offset(0, 0.10))
                              ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  child: Icon(Icons.arrow_back_ios, color: Colors.white, size: 12),
                                ),
                              ),
                              Text(
                                "Museum Fest...",
                                style:
                                    AppTextStyle.headline(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold, fontSize: 15),
                              )
                            ],
                          ),
                        ),
                        Stack(
                          children: const [
                            CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://cms.qz.com/wp-content/uploads/2021/05/BillGates.jpg?quality=75&strip=all&w=1600&h=900&crop=1'),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Icon(Icons.circle, color: Colors.green, size: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                    // ignore: prefer_const_constructors

                    const FestStackWidget(),
                    Padding(
                      padding: const EdgeInsets.only(top: 16.0, bottom: 12.0),
                      child: Text(
                        "Museum Week Fest",
                        style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 30, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "By",
                          style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 15),
                        ),
                        SizedBox(
                          height: 22,
                          child: CircleAvatar(
                            backgroundColor: Colors.black54,
                            child: Image.network('https://www.freeiconspng.com/uploads/letter-w-icon-png-32.png'),
                          ),
                        ),
                        Text(
                          "Week Museum",
                          style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 16.0),
                      child: Text(
                        "About",
                        style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 15),
                      ),
                    ),
                    Text.rich(
                      TextSpan(
                          text: "Museum Week Festival",
                          style: AppTextStyle.headline(context, AppColors.subTittleColor).copyWith(fontSize: 13, fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text:
                                  ", the woridwide festival for culture made by galleres, ilbraries, archives, museums, science & music centers! During 7 days, thousards of people and artist will meetup and talking about the Week Festival",
                              style: AppTextStyle.headline(context, AppColors.subTittleColor).copyWith(fontSize: 12),
                            ),
                          ]),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Timeline Event",
                          style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 15),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "View All",
                              style: AppTextStyle.headline(context, AppColors.subTittleColor).copyWith(fontSize: 13),
                            ))
                      ],
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffe8eaf6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Opening Festival"),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time_rounded,
                                size: 15,
                                color: Colors.grey,
                              ),
                              Text(
                                "  May 21, 09.00 PM",
                                style: AppTextStyle.headline(context, Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffe8eaf6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Opening Festival"),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time_rounded,
                                size: 15,
                                color: Colors.grey,
                              ),
                              Text(
                                "  May 21, 09.00 PM",
                                style: AppTextStyle.headline(context, Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffe8eaf6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Opening Festival"),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time_rounded,
                                size: 15,
                                color: Colors.grey,
                              ),
                              Text(
                                "  May 21, 09.00 PM",
                                style: AppTextStyle.headline(context, Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffeeeeee),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Opening Festival"),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time_rounded,
                                size: 15,
                                color: Colors.grey,
                              ),
                              Text(
                                "  May 21, 09.00 PM",
                                style: AppTextStyle.headline(context, Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 16),
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0xffe8eaf6),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Text("Opening Festival"),
                          Row(
                            children: [
                              const Icon(
                                Icons.access_time_rounded,
                                size: 15,
                                color: Colors.grey,
                              ),
                              Text(
                                "  May 21, 09.00 PM",
                                style: AppTextStyle.headline(context, Colors.grey),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                  color: AppColors.textColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Get a Ticket",
                  style: AppTextStyle.headline(context, AppColors.tittleColor).copyWith(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
