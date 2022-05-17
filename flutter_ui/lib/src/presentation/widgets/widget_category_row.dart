import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import '../../utils/app_text_style.dart';

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              padding: const EdgeInsets.all(3),
              height: 70,
              width: 70,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: Container(
                  width: 40,
                  height: 40,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      gradient: const LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [
                        Color(0xff5e35b1),
                        Color(0xff673ab7),

                      ])),
                  child: const SizedBox(
                    width: 20,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://www.pngall.com/wp-content/uploads/3/Art-PNG-Image.png'),
                    ),
                  )),
            ), const SizedBox(height: 16),
            Text("Art", textAlign: TextAlign.start, style: AppTextStyle.headline(context, AppColors.tittleColor))
          ],
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          children: [
            Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [
                    Color(0xff1c313a),
                    Color(0xff00363a),
                  ])),
              child: Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                child: Image.network(
                    'https://purepng.com/public/uploads/large/purepng.com-microphonemicrophonemicmikehearing-aids-1701528361881ohbmd.png'),
              ),
            ), const SizedBox(height: 16),
            Text("Music", style: AppTextStyle.headline(context, AppColors.tittleColor))
          ],
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          children: [
            Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [
                    Color(0xff1c313a),
                    Color(0xff00363a),
                  ])),
              child: Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                child: Image.network('https://pngimg.com/uploads/dancer/dancer_PNG110.png'),
              ),
            ),
            const SizedBox(height: 16),
            Text("Dancing", style: AppTextStyle.headline(context, AppColors.tittleColor))
          ],
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          children: [
            Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [
                    Color(0xff1c313a),
                    Color(0xff00363a),
                  ])),
              child: Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                child: Image.network('https://pngimg.com/uploads/book/book_PNG2105.png'),
              ),
            ), const SizedBox(height: 16),
            Text("Education", style: AppTextStyle.headline(context, AppColors.tittleColor))
          ],
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          children: [
            Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: const LinearGradient(begin: Alignment.centerLeft, end: Alignment.centerRight, colors: [
                    Color(0xff1c313a),
                    Color(0xff00363a),
                  ])),
              child: Container(
                height: 30,
                width: 30,
                alignment: Alignment.center,
                child: Image.network('https://pngimg.com/uploads/book/book_PNG2105.png'),
              ),
            ), const SizedBox(height: 16),
            Text("Education", style: AppTextStyle.headline(context, AppColors.tittleColor))
          ],
        ),
      ],
    );
  }
}
