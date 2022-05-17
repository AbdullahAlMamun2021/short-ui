import 'package:flutter/material.dart';
import 'package:food_commerce/src/data/model/custom_dropdown_item.dart';
import 'package:food_commerce/src/presentation/widgets/widget_dropdown_selector.dart';
import 'package:food_commerce/src/utils/app_colors.dart';
import 'package:food_commerce/src/utils/app_text_style.dart';

class CustomDropdown extends StatelessWidget {
  final String selection;
  final List<CustomDropdownItem> items;
  final Function(String selection) onTap;

  const CustomDropdown({Key? key, required this.selection, required this.items, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (_) => CustomDropdownSelector(
            selection: selection,
            items: items,
            onTap: (val) {
              onTap(val);
            },
          ),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        margin: const EdgeInsets.only(left: 16,top: 16, right: 16),
        decoration: BoxDecoration(
            color: AppColors.secondaryColor,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.hintColor, width: .5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              selection.isEmpty ? "Gender" : items.firstWhere((item) => item.value == selection).text,
              style: AppTextStyle.caption(context, AppColors.hintColor),
            ),
            Icon(Icons.arrow_drop_down, color: AppColors.hintColor)
          ],
        ),
      ),
    );
  }
}
