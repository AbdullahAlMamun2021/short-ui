import 'package:flutter/material.dart';
import 'package:food_commerce/src/data/model/custom_dropdown_item.dart';
import 'package:food_commerce/src/utils/app_colors.dart';

class CustomDropdownSelector extends StatelessWidget {
  final String selection;
  final List<CustomDropdownItem> items;
  final Function(String) onTap;

  const CustomDropdownSelector({Key? key, required this.selection, required this.items, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: MediaQuery.of(context).size.height * .5, minHeight: 0),
      child: ListView.builder(
        itemBuilder: (_, index) {
          final CustomDropdownItem dropdownItem = items.elementAt(index);
          return ListTile(
            leading:
                Icon(selection == dropdownItem.value ? Icons.check_circle : Icons.check_circle_outline_outlined, color: AppColors.textColor),
            title: Text(dropdownItem.text, style: TextStyle(color: AppColors.textColor)),
            onTap: () {
              onTap(dropdownItem.value);
              Navigator.of(context).pop();
            },
          );
        },
        itemCount: items.length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
