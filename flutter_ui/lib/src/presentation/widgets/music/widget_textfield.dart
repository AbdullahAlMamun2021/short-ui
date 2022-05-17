import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_text_style.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          isDense: true,
          // and add this line
          filled: true,
          fillColor: const Color(0xff4527a0),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
          hintText: "Search songs, artists or albums",
          hintStyle: AppTextStyle.headline(context, AppColors.subTittleColor),
          prefixIcon: Icon(
            Icons.search_rounded,
            size: 25,
            color: AppColors.subTittleColor,
          ),
        ),
      ),
    );
  }
}
