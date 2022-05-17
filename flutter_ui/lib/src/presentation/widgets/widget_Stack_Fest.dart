// ignore: file_names

// ignore_for_file: file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:flutter_ui/src/utils/app_text_style.dart';

import '../../utils/app_colors.dart';

class FestStackWidget extends StatelessWidget {
  const FestStackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 18),
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage('https://philbrook.org/fa-content/uploads/2018/01/philbrookfestival_lights_0.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Positioned(
          left: 15,
          top: 15,
          child: Container(
            height: 35,
            width: 145,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Icon(
                  Icons.golf_course_outlined,
                  size: 20,
                ),
                Text(
                  "Toronto, Canada",
                  style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            right: 15,
            top: 15,
            child: CircleAvatar(
              backgroundColor: AppColors.tittleColor,
              child: Icon(
                Icons.bookmark_border_rounded,
                size: 20,
                color: AppColors.textColor,
              ),
            )),
        Positioned(
          left: 130,
          bottom: 0,
          child: Container(
              alignment: Alignment.center,
              height: 35,
              width: 80,
              decoration: BoxDecoration(
                border: Border.all(width: 3, color: Colors.white),
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                "May 21",
                style: AppTextStyle.headline(context, AppColors.tittleColor),
              )),
        ),
      ],
    );
  }
}
