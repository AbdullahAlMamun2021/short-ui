import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_text_style.dart';
class StackWidget extends StatelessWidget {
  const StackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage(
                            'https://img.static-kl.com/images/media/E95E1F32-A7A4-4FC0-AC0A41A2BC528AE3?aspect_ratio=1:1&min_width=912'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "3.5km",
                        style: AppTextStyle.headline(context, AppColors.tittleColor),
                      ),
                    )),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Free",
                        style: AppTextStyle.headline(context, AppColors.tittleColor),
                      ),
                    )),
              ),
              Positioned(
                left: 50,
                bottom: 10,
                child: Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Music",
                        style: AppTextStyle.headline(context, AppColors.tittleColor),
                      ),
                    )),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Stack(
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: NetworkImage('https://img.theepochtimes.com/assets/uploads/2019/08/25/dance-i.jpg'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10)),
              ),
              Positioned(
                left: 10,
                top: 10,
                child: Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "3.5km",
                        style: AppTextStyle.headline(context, AppColors.tittleColor),
                      ),
                    )),
              ),
              Positioned(
                right: 10,
                top: 10,
                child: Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Free",
                        style: AppTextStyle.headline(context, AppColors.tittleColor),
                      ),
                    )),
              ),
              Positioned(
                left: 50,
                bottom: 10,
                child: Container(
                    height: 20,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: Text(
                        "Dancing",
                        style: AppTextStyle.headline(context, AppColors.tittleColor),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
class RecommendedStackWidget extends StatelessWidget {
  const RecommendedStackWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 200,
          decoration: BoxDecoration(
              image: const DecorationImage(
                  image: NetworkImage('https://img.theepochtimes.com/assets/uploads/2019/08/25/dance-i.jpg'), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
        ),
        Positioned(
          left: 10,
          top: 10,
          child: Container(
            height: 20,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                "3.5km",
                style: AppTextStyle.headline(context, AppColors.tittleColor),
              ),
            ),
          ),
        ),
        Positioned(
          right: 10,
          top: 10,
          child: Container(
              height: 20,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Free",
                  style: AppTextStyle.headline(context, AppColors.tittleColor),
                ),
              )),
        ),
        Positioned(
          left: 150,
          bottom: 10,
          child: Container(
              height: 20,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Center(
                child: Text(
                  "Dancing",
                  style: AppTextStyle.headline(context, AppColors.tittleColor),
                ),
              )),
        ),
      ],
    );
  }
}

