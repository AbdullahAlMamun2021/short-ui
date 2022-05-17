
import 'package:flutter/material.dart';

import '../../../utils/app_text_style.dart';

class RecentlyPlayRow extends StatelessWidget {
  const RecentlyPlayRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(right: 8),
            height: 70,
            decoration: BoxDecoration(
              boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 1, offset: Offset(0, 3))],
              borderRadius: BorderRadius.circular(12),
              color: Colors.white.withOpacity(0.1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 75,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage("https://i.ytimg.com/vi/uuBHiwc2WwU/maxresdefault.jpg"), fit: BoxFit.cover),
                  ),
                  child: Icon(
                    Icons.play_circle_fill_sharp,
                    color: Colors.white.withOpacity(.5),
                    size: 30,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "7 Rings",
                          style: AppTextStyle.headline(context, Colors.white).copyWith(fontSize: 13),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Anne Marie",
                          style: AppTextStyle.headline(context, Colors.white60),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.favorite_border,
                            color: Colors.grey,
                            size: 16,
                          ),
                          Icon(
                            Icons.more_vert_outlined,
                            color: Colors.grey,
                            size: 16,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            height: 70,
            decoration: BoxDecoration(
              boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 0.5, spreadRadius: 1, offset: Offset(0, 3))],
              borderRadius: BorderRadius.circular(12),
              color: Colors.white.withOpacity(0.1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 60,
                  height: 75,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topLeft: Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage("https://i.scdn.co/image/ab67616d0000b27337bf2fe1f3e72c4c3f6f5eeb"),
                        fit: BoxFit.cover),
                  ),
                  child: Icon(
                    Icons.play_circle_fill_sharp,
                    color: Colors.white.withOpacity(.5),
                    size: 30,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Hold Me Back",
                          style: AppTextStyle.headline(context, Colors.white).copyWith(fontSize: 13),
                        ), SizedBox(height: 5),
                        Text(
                          "Kidi",
                          style: AppTextStyle.headline(context, Colors.white60),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(
                            Icons.favorite,
                            color: Colors.grey,
                            size: 15,
                          ),
                          Icon(
                            Icons.more_vert_outlined,
                            color: Colors.grey,
                            size: 15,
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}