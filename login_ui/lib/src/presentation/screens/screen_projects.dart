import 'package:flutter/material.dart';
import 'package:login_ui/src/utils/app_color.dart';
import 'package:login_ui/src/utils/app_text_style.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff102027),
      appBar: AppBar(
          backgroundColor: const Color(0xff102027),
          leading: Container(
            margin: const EdgeInsets.only(left: 16, top: 8, bottom: 8),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.blueGrey.withOpacity(.2)),
            child: const Icon(Icons.arrow_back_ios),
          )),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const CircleAvatar(
                  backgroundImage: AssetImage("img/leo.jpg"),
                ),
                title: Text(
                  "Velkhana Smith",
                  style: AppTextStyle.subtittle(context, AppColors.bodyColor).copyWith(fontSize: 18),
                ),
                subtitle: Text(
                  "Art Director",
                  style: AppTextStyle.subtittle(context, AppColors.bodyColor).copyWith(fontSize: 15),
                ),
                trailing: Container(
                  width: 115,
                  height: 45,
                  decoration: BoxDecoration(
                    color: const Color(0xff1565c0),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      "Add Task",
                      style: AppTextStyle.subtittle(context, AppColors.bodyColor).copyWith(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 17,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xFF880e4f),
                                ),
                              ),
                              Icon(
                                Icons.more_vert_outlined,
                                color: Colors.grey.shade600,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.calendar_today_outlined, size: 15, color: Colors.grey),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Sept 5,2020",
                                style: AppTextStyle.subtittle(context, Colors.grey).copyWith(fontSize: 14),
                              )
                            ],
                          ),
                          Text(
                            "VPS Website Project",
                            style: AppTextStyle.subtittle(context, Colors.white).copyWith(fontSize: 22),
                          ),
                          Divider(color: Colors.grey.shade600),
                          Row(
                            children: [
                              const Icon(Icons.message_outlined, color: Colors.grey, size: 15),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                "5",
                                style: AppTextStyle.subtittle(context, Colors.grey).copyWith(fontSize: 13),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Icon(Icons.attachment_outlined, color: Colors.grey, size: 15),
                              const SizedBox(
                                width: 2,
                              ),
                              Text("3", style: AppTextStyle.subtittle(context, Colors.grey).copyWith(fontSize: 13)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 32,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade900,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/beach.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 45,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade900,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/leo.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 60,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade900,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/screen.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 0,
                    child: Container(
                      margin: const EdgeInsets.only(right: 16),
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade900,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          "2+",
                          style: AppTextStyle.subtittle(context, Colors.black).copyWith(fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 17,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: const Color(0xFF1565c0),
                                ),
                              ),
                              Icon(
                                Icons.more_vert_outlined,
                                color: Colors.grey.shade600,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.calendar_today_outlined, size: 15, color: Colors.grey),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Sept 9,2020",
                                style: AppTextStyle.subtittle(context, Colors.grey).copyWith(fontSize: 14),
                              )
                            ],
                          ),
                          Text(
                            "Icon Pack Presentation",
                            style: AppTextStyle.subtittle(context, Colors.white).copyWith(fontSize: 22),
                          ),
                          Divider(color: Colors.grey.shade600),
                          Row(
                            children: [
                              const Icon(Icons.message_outlined, color: Colors.grey, size: 15),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                "9",
                                style: AppTextStyle.subtittle(context, Colors.grey).copyWith(fontSize: 13),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Icon(Icons.attachment_outlined, color: Colors.grey, size: 15),
                              const SizedBox(
                                width: 2,
                              ),
                              Text("4", style: AppTextStyle.subtittle(context, Colors.grey).copyWith(fontSize: 13)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 45,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade900,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/beach.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 32,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade900,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/leo.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 0,
                    child: Container(
                      margin: const EdgeInsets.only(right: 16),
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade900,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/screen.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 17,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.orange,
                                ),
                              ),
                              Icon(
                                Icons.more_vert_outlined,
                                color: Colors.grey.shade600,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.calendar_today_outlined, size: 15, color: Colors.grey),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Sept 21,2020",
                                style: AppTextStyle.subtittle(context, Colors.grey).copyWith(fontSize: 14),
                              )
                            ],
                          ),
                          Text(
                            "Finance Dashboard",
                            style: AppTextStyle.subtittle(context, Colors.white).copyWith(fontSize: 22),
                          ),
                          Divider(color: Colors.grey.shade600),
                          Row(
                            children: [
                              const Icon(Icons.message_outlined, color: Colors.grey, size: 15),
                              const SizedBox(
                                width: 2,
                              ),
                              Text(
                                "24",
                                style: AppTextStyle.subtittle(context, Colors.grey).copyWith(fontSize: 13),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              const Icon(Icons.attachment_outlined, color: Colors.grey, size: 15),
                              const SizedBox(
                                width: 2,
                              ),
                              Text("14", style: AppTextStyle.subtittle(context, Colors.grey).copyWith(fontSize: 13)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 32,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade900,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/beach.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 47,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade900,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/leo.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 62,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade900,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/screen.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 0,
                    child: Container(
                      margin: const EdgeInsets.only(right: 16),
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade900,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          "3+",
                          style: AppTextStyle.subtittle(context, Colors.black).copyWith(fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 17,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.green,
                                ),
                              ),
                              Icon(
                                Icons.more_vert_outlined,
                                color: Colors.grey.shade600,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.calendar_today_outlined, size: 15, color: Colors.grey.shade600),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Sept 5,2020",
                                style: AppTextStyle.subtittle(context, Colors.grey.shade600).copyWith(fontSize: 14),
                              )
                            ],
                          ),
                          Text(
                            "VPS Website Project",
                            style: AppTextStyle.subtittle(context, Colors.white).copyWith(fontSize: 22),
                          ),
                          Divider(color: Colors.grey.shade600),
                          Row(
                            children: [
                              Icon(Icons.message_outlined, color: Colors.grey.shade600, size: 15),
                              Text(
                                "5",
                                style: AppTextStyle.subtittle(context, Colors.grey.shade600).copyWith(fontSize: 13),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.attachment_outlined, color: Colors.grey.shade600, size: 15),
                              Text("3", style: AppTextStyle.subtittle(context, Colors.grey.shade600).copyWith(fontSize: 13)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 32,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/beach.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 50,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/leo.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 65,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade900,
                        ),
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/screen.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 0,
                    child: Container(
                      margin: const EdgeInsets.only(right: 16),
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade900,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          "2+",
                          style: AppTextStyle.subtittle(context, Colors.black).copyWith(fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 17,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.purple,
                                ),
                              ),
                              Icon(
                                Icons.more_vert_outlined,
                                color: Colors.grey.shade600,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.calendar_today_outlined, size: 15, color: Colors.grey.shade600),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Sept 5,2020",
                                style: AppTextStyle.subtittle(context, Colors.grey.shade600).copyWith(fontSize: 14),
                              )
                            ],
                          ),
                          Text(
                            "VPS Website Project",
                            style: AppTextStyle.subtittle(context, Colors.white).copyWith(fontSize: 22),
                          ),
                          Divider(color: Colors.grey.shade600),
                          Row(
                            children: [
                              Icon(Icons.message_outlined, color: Colors.grey.shade600, size: 15),
                              Text(
                                "5",
                                style: AppTextStyle.subtittle(context, Colors.grey.shade600).copyWith(fontSize: 13),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Icon(Icons.attachment_outlined, color: Colors.grey.shade600, size: 15),
                              Text("3", style: AppTextStyle.subtittle(context, Colors.grey.shade600).copyWith(fontSize: 13)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 32,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/beach.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 50,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/leo.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 65,
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage(
                            "img/screen.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 145,
                    right: 0,
                    child: Container(
                      margin: const EdgeInsets.only(right: 16),
                      height: 22,
                      width: 22,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color: Colors.blueGrey.shade900,
                        ),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Center(
                        child: Text(
                          "2+",
                          style: AppTextStyle.subtittle(context, Colors.black).copyWith(fontSize: 10, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
