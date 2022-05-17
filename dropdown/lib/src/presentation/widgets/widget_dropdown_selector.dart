import 'package:dropdown/src/data/model/custom_dropdown_items.dart';
import 'package:flutter/material.dart';

class CustomDropDownSelector extends StatelessWidget {
  final String selection;
  final List<CustomDropDownItem> items;
  final Function(String) onTap;

  const CustomDropDownSelector({Key? key, required this.selection, required this.items, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_, index) {
        final CustomDropDownItem dropdownItem = items.elementAt(index);
        return ListTile(
          leading: Icon(selection == dropdownItem.value ? Icons.check_circle : Icons.check_circle_outline_outlined),
          title: Text(
            dropdownItem.text,
          ),
          onTap: () {
            onTap(dropdownItem.value);
            Navigator.of(context).pop();
          },
        );
      },
      itemCount: items.length,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
    );
  }
}
