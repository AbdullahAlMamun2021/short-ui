import 'package:dropdown/src/data/model/custom_dropdown_items.dart';
import 'package:dropdown/src/presentation/widgets/widget_dropdown_selector.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  final String selection;
  final List<CustomDropDownItem> items;
  final Function(String selection) onTap;

  const CustomDropDown({Key? key, required this.selection, required this.items, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (_) => CustomDropDownSelector(
            selection: selection,
            items: items,
            onTap: (val) {
              onTap(val);
            },
          ),
        );
      },
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              // margin: const EdgeInsets.only(top: 16, right: 16),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(width: .5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(selection.isEmpty ? "" : items.firstWhere((item) => item.value == selection).text),
                  const Icon(
                    Icons.arrow_drop_down,
                  )
                ],
              ),
            ),
            SizedBox(height: 30,)
          ],
        ),
      ),
    );
  }
}
