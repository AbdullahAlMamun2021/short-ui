import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_text_style.dart';

class MoodMusicSingleChildScrollView extends StatelessWidget {
  const MoodMusicSingleChildScrollView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0, bottom: 16),
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 8),
              height: 100,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: const NetworkImage(
                        "https://img.freepik.com/free-vector/musical-notes-frame-with-text-space_1017-32857.jpg?size=626&ext=jpg"),
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(.6), BlendMode.darken),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Relaxing",
                    style: AppTextStyle.headline(context, AppColors.tittleColor).copyWith(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "50 Songs , 2 hrs 50 mins",
                    style: AppTextStyle.headline(context, Colors.white70).copyWith(fontSize: 10),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 8),
              height: 100,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: const NetworkImage(
                        "https://www.tunecore.com/wp-content/uploads/sites/12/2018/08/bigstock-Concept-music-Music-backgroun-91515743-2.jpg"),
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(.6), BlendMode.darken),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Party",
                    style: AppTextStyle.headline(context, AppColors.tittleColor).copyWith(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "60 Songs , 3 hrs 40 mins",
                    style: AppTextStyle.headline(context, Colors.white70).copyWith(fontSize: 10),
                  ),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 8),
              height: 100,
              width: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: const NetworkImage("https://scx2.b-cdn.net/gfx/news/2016/578650fe544c4.jpg"),
                    colorFilter: ColorFilter.mode(Colors.black.withOpacity(.5), BlendMode.darken),
                    fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Irie",
                    style: AppTextStyle.headline(context, AppColors.tittleColor).copyWith(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "50 Songs ,2 hrs 30 mins",
                    style: AppTextStyle.headline(context, Colors.white70).copyWith(fontSize: 10),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




class NewReleaseSinglechildScrolView extends StatelessWidget {
  const NewReleaseSinglechildScrolView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 8,bottom: 8),
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage("https://spacingin.com/wp-content/uploads/2019/12/dua-lipa-songs.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Love Again",
                  style: AppTextStyle.headline(context, Colors.white).copyWith(fontSize: 15),
                ),
                Text(
                  "Dua Lipa",
                  style: AppTextStyle.headline(context, Colors.white70).copyWith(fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 8,bottom: 8),
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://asset-americas.unileversolutions.com/content/dam/unilever/dove/global/photography_and_pictures/lizzo_virtual_summit_!-40727213-jpg.jpg.ulenscale.218x218.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Good as Hell",
                  style: AppTextStyle.headline(context, Colors.white).copyWith(fontSize: 15),
                ),
                Text(
                  "Lizzo",
                  style: AppTextStyle.headline(context, Colors.white70).copyWith(fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 8,bottom: 8),
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage("https://m.media-amazon.com/images/I/61lMwNQGYbL._AC_SL1200_.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Adele",
                  style: AppTextStyle.headline(context, Colors.white).copyWith(fontSize: 15),
                ),
                Text(
                  "30",
                  style: AppTextStyle.headline(context, Colors.white70).copyWith(fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class TopHitsSingleChildScrolView extends StatelessWidget {
  const TopHitsSingleChildScrolView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 16, bottom: 16),
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 8,bottom: 8),
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/d/dd/Anne-Marie-4587.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Friends",
                  style: AppTextStyle.headline(context, Colors.white).copyWith(fontSize: 15),
                ),
                Text(
                  "Anne Marie",
                  style: AppTextStyle.headline(context, Colors.white70).copyWith(fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 8,bottom: 8),
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://www.billboard.com/wp-content/uploads/media/ed-sheeran-toronto-2015-live-billboard-1548.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Perfect",
                  style: AppTextStyle.headline(context, Colors.white).copyWith(fontSize: 15),
                ),
                Text(
                  "Ed sheeran ",
                  style: AppTextStyle.headline(context, Colors.white70).copyWith(fontSize: 10),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(right: 8,bottom: 8),
                  height: 100,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                      image: NetworkImage("https://i1.sndcdn.com/artworks-IrhmhgPltsdrwMu8-thZohQ-t500x500.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Text(
                  "Alan Walker",
                  style: AppTextStyle.headline(context, Colors.white).copyWith(fontSize: 15),
                ),
                Text(
                  "Faded",
                  style: AppTextStyle.headline(context, Colors.white70).copyWith(fontSize: 10),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

