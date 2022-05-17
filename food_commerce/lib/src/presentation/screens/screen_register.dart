import 'dart:io';
import 'package:flutter/material.dart';
import 'package:food_commerce/src/data/model/custom_dropdown_item.dart';
import 'package:food_commerce/src/presentation/widgets/widget_bloodgrp_dropdown.dart';
import 'package:food_commerce/src/presentation/widgets/widget_gender_dropdown.dart';
import 'package:food_commerce/src/utils/app_colors.dart';
import 'package:food_commerce/src/utils/app_router.dart';
import 'package:food_commerce/src/utils/app_text_style.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  DateTime birthDate = DateTime.now();

  String imagePath = "";
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController dateOfBirthController = TextEditingController();

  String gender = "";
  String bloodGroup = "";

  final List<CustomDropdownItem> genderItems = [
    CustomDropdownItem("male", "Male"),
    CustomDropdownItem("female", "Female"),
    CustomDropdownItem("others", "Others"),
  ];

  final List<CustomDropdownItem> bloodGroupItems = [
    CustomDropdownItem("apos", "A+"),
    CustomDropdownItem("aneg", "A-"),
    CustomDropdownItem("bpos", "B+"),
    CustomDropdownItem("bneg", "B-"),
    CustomDropdownItem("abpos", "AB+"),
    CustomDropdownItem("bbneg", "AB-"),
    CustomDropdownItem("opos", "O+"),
    CustomDropdownItem("oneg", "O-"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 100.0,
                  width: 100.0,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    color: AppColors.secondaryColor,
                  ),
                  child: InkWell(
                    onTap: () async {
                      final XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
                      if (file != null) {
                        setState(() {
                          imagePath = file.path;
                        });
                      }
                    },
                    child: imagePath.isEmpty ? Icon(Icons.add_a_photo_outlined, color: AppColors.hintColor) : Image.file(File(imagePath)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => (value?.isEmpty ?? true) ? "required" : null,
                    decoration: InputDecoration(
                      hintText: "Emp ID",
                      hintStyle: AppTextStyle.caption(context, AppColors.hintColor),
                      isDense: true,
                      // Added this
                      contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    ),
                    cursorColor: AppColors.textColor,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => (value?.isEmpty ?? true) ? "required" : null,
                    decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: AppTextStyle.caption(context, AppColors.hintColor),
                      isDense: true,
                      // Added this
                      contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    ),
                    cursorColor: AppColors.textColor,
                    style: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.name,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => (value?.isEmpty ?? true) ? "required" : null,
                    decoration: InputDecoration(
                      hintText: "Phone",
                      hintStyle: AppTextStyle.caption(context, AppColors.hintColor),
                      isDense: true,
                      // Added this
                      contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    ),
                    cursorColor: AppColors.textColor,
                    style: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.phone,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => (value?.isEmpty ?? true) ? "required" : null,
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: AppTextStyle.caption(context, AppColors.hintColor),
                      isDense: true,
                      // Added this
                      contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    ),
                    cursorColor: AppColors.textColor,
                    style: const TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                const SizedBox(height: 4),
                CustomDropdown(
                  selection: gender,
                  items: genderItems,
                  onTap: (selection) {
                    setState(() {
                      gender = selection;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextField(
                    controller: dateOfBirthController,
                    readOnly: true,
                    decoration: InputDecoration(
                      hintText: "Date of birth",
                      hintStyle: AppTextStyle.caption(context, AppColors.hintColor),
                      isDense: true,
                      // Added this
                      contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    ),
                    onTap: () async {
                      final DateTime? time = await showDatePicker(
                        context: context,
                        initialDate:
                            birthDate.isAfter(DateTime.now().subtract(const Duration(days: 18 * 365))) ? DateTime(2000, 1, 1) : birthDate,
                        firstDate: DateTime.now().subtract(const Duration(days: 60 * 365)),
                        lastDate: DateTime.now().subtract(const Duration(days: 18 * 365)),
                      );

                      if (time != null) {
                        setState(() {
                          birthDate = time;
                          dateOfBirthController.text = DateFormat("dd MMMM, yyyy").format(time);
                        });
                      }
                    },
                    cursorColor: AppColors.textColor,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 4),
                CustomBDropdown(
                  bselection: bloodGroup,
                  bitems: bloodGroupItems,
                  onTap: (selection) {
                    setState(() {
                      bloodGroup = selection;
                    });
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextFormField(
                    validator: (value) => (value?.isEmpty ?? true) ? "required" : null,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: AppTextStyle.caption(context, AppColors.hintColor),
                      isDense: true,
                      // Added this
                      contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    ),
                    cursorColor: AppColors.textColor,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    validator: (value) => (value?.isEmpty ?? true) ? "required" : null,
                    decoration: InputDecoration(
                      hintText: "Confirm password",
                      hintStyle: AppTextStyle.caption(context, AppColors.hintColor),
                      isDense: true,
                      // Added this
                      contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    ),
                    cursorColor: AppColors.textColor,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 16),
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(AppColors.textColor),
                      ),
                      onPressed: () {
                        if (formKey.currentState?.validate() ?? false) {
                          Navigator.pushNamed(context, AppRouter.dashboard);
                        }
                      },
                      child: Text(
                        "SUBMIT",
                        style: AppTextStyle.body(context, AppColors.backgroundColor),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
