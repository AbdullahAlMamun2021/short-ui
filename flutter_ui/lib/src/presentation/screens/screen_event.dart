import 'package:flutter/material.dart';
import 'package:flutter_ui/src/utils/app_colors.dart';
import 'package:flutter_ui/src/utils/app_text_style.dart';
import '../widgets/widget_bottomNavigation.dart';
import '../widgets/widget_category_row.dart';
import '../widgets/widget_crosuel.dart';
import '../widgets/widget_list_tile.dart';
import '../widgets/widget_stack.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff102027),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const ListTitleWidget(),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text("Categories", style: AppTextStyle.headline(context, AppColors.tittleColor).copyWith(fontSize: 18)),
                  ),
                  Text("See all", style: AppTextStyle.headline(context, AppColors.subTittleColor)),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: CategoryRow(),
              ),
              const SizedBox(
                height: 32,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Event Near you", style: AppTextStyle.headline(context, AppColors.tittleColor).copyWith(fontSize: 18)),
                  Text("View more", style: AppTextStyle.headline(context, AppColors.subTittleColor)),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const CarosuelWidget(),

              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommended", style: AppTextStyle.headline(context, AppColors.tittleColor).copyWith(fontSize: 18)),
                  Text("View all", style: AppTextStyle.headline(context, AppColors.subTittleColor)),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const RecommendedStackWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomWidget(),
    );
  }
}
