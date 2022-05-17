import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_text_style.dart';
class ListTitleWidget extends StatelessWidget {
  const ListTitleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32.0,bottom: 16),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        title: Text.rich(TextSpan(
            text: "Hi,Andri!",
            style: AppTextStyle.headline(context, AppColors.tittleColor).copyWith(fontSize: 25),
            children: const [
              TextSpan(
                text: "👋",
              )
            ])),
        subtitle:
        Text("\nLet's find a good event", style: AppTextStyle.headline(context, AppColors.subTittleColor).copyWith(fontSize: 15)),
        trailing: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Container(
            margin: const EdgeInsets.all(2),
            child: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://static.independent.co.uk/s3fs-public/thumbnails/image/2017/09/27/08/jennifer-lawrence.jpg?quality=75&width=982&height=726&auto=webp'),
            ),
          ),
        ),
      ),
    );
  }
}
