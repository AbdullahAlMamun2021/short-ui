import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:login_ui/src/utils/app_color.dart';
import 'package:login_ui/src/utils/app_text_style.dart';

class BeachScreen extends StatelessWidget {
  BeachScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Stack(
                children: [
                  CarouselSlider(
                    options: CarouselOptions(
                      height: 400.0,
                      enlargeCenterPage: true,
                      autoPlay: true,
                      aspectRatio: 16 / 9,
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enableInfiniteScroll: true,
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      viewportFraction: 1,
                    ),
                    items: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200.0,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("img/beach.jpg"),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                        ),
                        child: Column(
                          children: const [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundColor: Colors.black38,
                                child: Icon(
                                  Icons.arrow_back,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                              trailing: CircleAvatar(
                                backgroundColor: Colors.black38,
                                child: Icon(
                                  Icons.exit_to_app,
                                  size: 18,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    left: 140,
                    top: 160,
                    child: Row(
                      children: [
                        Icon(Icons.circle, color: Colors.white.withOpacity(.6), size: 10),
                        Container(
                          margin: const EdgeInsets.only(left: 5, right: 5),
                          height: 8,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Icon(Icons.circle, color: Colors.white.withOpacity(.6), size: 10),
                        const SizedBox(width: 5),
                        Icon(Icons.circle, color: Colors.white.withOpacity(.6), size: 10),
                        const SizedBox(width: 5),
                        Icon(Icons.circle, color: Colors.white.withOpacity(.6), size: 10),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 185,
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(25),
                    topLeft: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      title: Text(
                        "Parangtritis Beach",
                        style: AppTextStyle.braibob(context, AppColors.textColor).copyWith(fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      trailing: const CircleAvatar(
                        backgroundColor: Color(0xfff5f5f5),
                        child: Icon(
                          Icons.favorite,
                          color: Color(0xffb71c1c),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, bottom: 16),
                      child: Text(
                        "Gunung Kibul",
                        style: AppTextStyle.caption(context, Colors.grey),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 16),
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(color: const Color(0xfff5f5f5), borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 18,
                                  color: Colors.orangeAccent.shade100,
                                ),
                                Text(
                                  "4.5k",
                                  style: AppTextStyle.braibob(context, Colors.black45).copyWith(fontSize: 11),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(
                            color: const Color(0xfff5f5f5),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.watch_later,
                                  size: 18,
                                  color: Colors.black45,
                                ),
                                Text(
                                  "2 Hours",
                                  style: AppTextStyle.braibob(context, Colors.black45).copyWith(fontSize: 11),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(color: const Color(0xfff5f5f5), borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.send_outlined,
                                  size: 18,
                                  color: Colors.black45,
                                ),
                                Text(
                                  "10km",
                                  style: AppTextStyle.braibob(context, Colors.black45).copyWith(fontSize: 11),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 16),
                          height: 50,
                          width: 60,
                          decoration: BoxDecoration(color: const Color(0xfff5f5f5), borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Icon(
                                  Icons.cloud,
                                  size: 18,
                                  color: Colors.black45,
                                ),
                                Text(
                                  "Cloudy",
                                  style: AppTextStyle.braibob(context, Colors.black45).copyWith(fontSize: 11),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Description",
                        style: AppTextStyle.braibob(context, AppColors.textColor).copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Text(
                        "A beach is a landform alongside a body of water which consists of loose particles.  such as sand, gravel, shingle, pebbles, etc., or biological sources, such as mollusc shells or coralline algae. ",
                        textAlign: TextAlign.start,
                        style: AppTextStyle.braibob(context, Colors.black45),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        "Facility",
                        style: AppTextStyle.braibob(context, AppColors.textColor).copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 16,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xfff5f5f5),
                              child: Icon(Icons.bathtub_outlined, color: AppColors.textColor),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Bathroom",
                                style: AppTextStyle.braibob(context, AppColors.textColor).copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 48,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: const Color(0xfff5f5f5),
                              child: Icon(Icons.restaurant_menu, color: AppColors.textColor),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Restaurant",
                                style: AppTextStyle.braibob(context, AppColors.textColor).copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 16, left: 16.0),
                          child: CircleAvatar(
                            backgroundColor: const Color(0xfff5f5f5),
                            child: Icon(Icons.gamepad_outlined, color: AppColors.textColor),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, left: 10.0),
                          child: Text(
                            "Playing Ground",
                            style: AppTextStyle.braibob(context, AppColors.textColor).copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 660,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: const BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover, image: AssetImage("img/screen.jpg")),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                color: Colors.white,
                child: ListTile(
                  title: Text(
                    "\$10",
                    style: AppTextStyle.braibob(context, AppColors.textColor).copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Per person",
                    style: AppTextStyle.braibob(context, Colors.black45),
                  ),
                  trailing: Container(
                    width: 150,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Add to list",
                        style: AppTextStyle.braibob(context, AppColors.bodyColor).copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
