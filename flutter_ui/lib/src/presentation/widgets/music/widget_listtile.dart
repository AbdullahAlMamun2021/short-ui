import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_text_style.dart';
class WelcomeListTile extends StatelessWidget {
  const WelcomeListTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Hi Arjun,",
        style: AppTextStyle.headline(context, AppColors.tittleColor).copyWith(fontSize: 15),
      ),
      subtitle: Text(
        "Welcome back!",
        style: AppTextStyle.headline(context, AppColors.subTittleColor),
      ),
      trailing: const CircleAvatar(
        backgroundImage: NetworkImage(
          'https://img.mensxp.com/media/content/2021/Mar/Sunglass-Styles-For-Men-17_6062eeacd3ccf.jpeg',
        ),
      ),
    );
  }
}
