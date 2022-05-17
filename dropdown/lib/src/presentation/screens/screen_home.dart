import 'package:dropdown/src/data/model/custom_dropdown_items.dart';
import 'package:dropdown/src/presentation/widgets/widget_group_dropdown.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String all = "";
  String web = "";
  String digital = "";

  final List<CustomDropDownItem> allItems = [
    CustomDropDownItem("appdeveloper", "App development"),
    CustomDropDownItem("webdeveloper", "Web Development"),
    CustomDropDownItem("digitalmarketing", "Digital Marketing"),
  ];
  final List<CustomDropDownItem> appDeveloperItems = [
    CustomDropDownItem("junior", "Junior Developer"),
    CustomDropDownItem("senior", "Senior Developer"),
    CustomDropDownItem("senior", "backend Developer"),
    CustomDropDownItem("senior", "Fronted Developer"),
  ];
  final List<CustomDropDownItem> webDeveloperItems = [
    CustomDropDownItem("webdesign", "Web design"),
    CustomDropDownItem("webdeveloper", "Web Developer"),
  ];
  final List<CustomDropDownItem> digitalMarketerItems = [
    CustomDropDownItem("facebook", "Facebook Marketing"),
    CustomDropDownItem("youtube", "Youtube Marketing"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("All item"),
          CustomDropDown(
            selection: all,
            items: allItems,
            onTap: (selection) {
              setState(() {
                all = selection;
              });
            },
          ),
          Text("Your Category"),
          CustomDropDown(
            selection: web,
            items: all == "appdeveloper"
                ? appDeveloperItems
                : all == "webdeveloper"
                ? webDeveloperItems
                : all == "digitalmarketing"
                ? digitalMarketerItems
                : [],
            onTap: (selection) {
              setState(() {
                web = selection;
              });
            },
          ),
        ],
      ),
    );
  }
}
