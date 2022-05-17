import 'package:flutter/material.dart';
import 'package:flutter_ui/src/utils/app_colors.dart';
import 'package:flutter_ui/src/utils/app_text_style.dart';
import '../widgets/music/widget_bottom_navigation.dart';
import '../widgets/music/widget_listtile.dart';
import '../widgets/music/widget_row.dart';
import '../widgets/music/widget_singlechildscrolview.dart';
import '../widgets/music/widget_textfield.dart';

class MusicScreen extends StatelessWidget {
  const MusicScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topRight,
              colors: [
                Color(0xff000000),
                Color(0xff38006b),
              ],
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8, top: 12, bottom: 12),
              child: Column(
                children: [
                  const WelcomeListTile(),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: SearchTextField(),
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    title: Text(
                      "Recently Played",
                      style: AppTextStyle.headline(context, AppColors.tittleColor).copyWith(fontWeight: FontWeight.w600, fontSize: 20),
                    ),
                    subtitle: Text(
                      "Continue Listening",
                      style: AppTextStyle.headline(context, AppColors.subTittleColor),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 12,
                      color: AppColors.subTittleColor,
                    ),
                  ),
                  const RecentlyPlayRow(),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Mood Music",
                        style: AppTextStyle.headline(context, AppColors.tittleColor).copyWith(fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            "More ",
                            style: AppTextStyle.headline(context, AppColors.subTittleColor),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 10,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ],
                  ),
                  const MoodMusicSingleChildScrollView(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Hot New Release",
                        style: AppTextStyle.headline(context, AppColors.tittleColor).copyWith(fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            "More ",
                            style: AppTextStyle.headline(context, AppColors.subTittleColor),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 10,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ],
                  ),
                  const NewReleaseSinglechildScrolView(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Hits",
                        style: AppTextStyle.headline(context, AppColors.tittleColor).copyWith(fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      Row(
                        children: [
                          Text(
                            "More ",
                            style: AppTextStyle.headline(context, AppColors.subTittleColor),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 10,
                            color: Colors.grey,
                          )
                        ],
                      ),
                    ],
                  ),
                  const TopHitsSingleChildScrolView(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigationWidget(),
    );
  }
}
