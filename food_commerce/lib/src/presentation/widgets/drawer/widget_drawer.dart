import 'package:flutter/material.dart';
import 'package:food_commerce/src/utils/app_colors.dart';
import 'package:food_commerce/src/utils/app_router.dart';
import 'package:food_commerce/src/utils/app_text_style.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(

      backgroundColor: AppColors.backgroundColor,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            DrawerHeader(
              child: Icon(
                Icons.person,
                color: AppColors.textColor,
                size: 80,
              ),
            ),
            Divider(color: AppColors.hintColor),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ListTile(
                      leading: Icon(Icons.dashboard, color: AppColors.textColor),
                      title: Text(
                        "Dashboard",
                        style: AppTextStyle.body(context, AppColors.textColor),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.person_add, color: AppColors.textColor),
                      title: Text(
                        "Attendance",
                        style: AppTextStyle.body(context, AppColors.textColor),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, AppRouter.attendance);
                      },
                    ),
                    ListTile(
                      leading: Icon(
                        Icons.time_to_leave_outlined,
                      color: AppColors.textColor),
                      title: Text(
                        "Leave",
                        style: AppTextStyle.body(context, AppColors.textColor),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, AppRouter.leave);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.scatter_plot_rounded, color: AppColors.textColor),
                      title: Text(
                        "Projects",
                        style: AppTextStyle.body(context, AppColors.textColor),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, AppRouter.project);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.no_meals_ouline, color: AppColors.textColor),
                      title: Text(
                        "Meal",
                        style: AppTextStyle.body(context, AppColors.textColor),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, AppRouter.meal);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.message, color: AppColors.textColor),
                      title: Text(
                        "Chatting",
                        style: AppTextStyle.body(context, AppColors.textColor),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, AppRouter.chatting);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.cast_for_education, color: AppColors.textColor),
                      title: Text(
                        "Blog",
                        style: AppTextStyle.body(context, AppColors.textColor),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, AppRouter.blog);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications_active_rounded, color: AppColors.textColor),
                      title: Text(
                        "Notice",
                        style: AppTextStyle.body(context, AppColors.textColor),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, AppRouter.notice);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.open_with_rounded, color: AppColors.textColor),
                      title: Text(
                        "Todo",
                        style: AppTextStyle.body(context, AppColors.textColor),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context,AppRouter.todo);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.schedule, color: AppColors.textColor),
                      title: Text(
                        "Schedule",
                        style: AppTextStyle.body(context, AppColors.textColor),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, AppRouter.schedule);
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.logout, color: AppColors.textColor),
                      title: Text(
                        "Log Out",
                        style: AppTextStyle.body(context, AppColors.textColor),
                      ),
                      onTap: () {
                        Navigator.pop(context);
                        Navigator.pushNamed(context, AppRouter.logout);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
