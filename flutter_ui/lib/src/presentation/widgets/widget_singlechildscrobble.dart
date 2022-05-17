import 'package:flutter/material.dart';
import 'package:flutter_ui/src/utils/app_router.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_text_style.dart';

class SingleChildScrobbleWidget extends StatelessWidget {
  const SingleChildScrobbleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          InkWell(
            child: Container(
              margin: const EdgeInsets.only(right: 12),
              padding: const EdgeInsets.only(left: 8),
              height: 130,
              width: 125,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey.shade200, width: 2),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      backgroundColor: AppColors.textColor,
                      child: Icon(
                        Icons.sports_baseball_outlined,
                        color: AppColors.tittleColor,
                      )),
                  Text(
                    "Ripple",
                    style: AppTextStyle.headline(context, Colors.black).copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text.rich(TextSpan(
                      text: '\$0.988',
                      style: AppTextStyle.headline(context, Colors.black).copyWith(fontSize: 12),
                      children: [TextSpan(text: "  +1.70%", style: AppTextStyle.headline(context, Colors.green).copyWith(fontSize: 12))])),
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, AppRouter.ripple);
            },
          ),
          Container(
            margin: const EdgeInsets.only(right: 12),
            padding: const EdgeInsets.only(left: 8),
            height: 130,
            width: 125,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade200, width: 2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.whatshot_outlined,
                      color: AppColors.tittleColor,
                    )),
                Text(
                  "Avalanche",
                  style: AppTextStyle.headline(context, Colors.black).copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text.rich(TextSpan(text: '\$0.988', style: AppTextStyle.headline(context, Colors.black).copyWith(fontSize: 12), children: [
                  TextSpan(
                    text: "  -1.51%",
                    style: AppTextStyle.headline(context, Colors.red).copyWith(fontSize: 12),
                  )
                ])),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 12),
            padding: const EdgeInsets.only(left: 8),
            height: 130,
            width: 125,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.grey.shade200, width: 2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.align_vertical_bottom_outlined,
                      color: AppColors.tittleColor,
                    )),
                Text(
                  "Solana",
                  style: AppTextStyle.headline(context, Colors.black).copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text.rich(
                  TextSpan(
                    text: '\$0.988',
                    style: AppTextStyle.headline(context, Colors.black).copyWith(fontSize: 12),
                    children: [
                      TextSpan(
                          text: " +1.70%",
                          style: AppTextStyle.headline(context, Colors.green).copyWith(
                            fontSize: 12 ,
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
