import 'package:flutter/material.dart';
import 'package:flutter_ui/src/utils/app_colors.dart';
import 'package:flutter_ui/src/utils/app_text_style.dart';

class RippleScreen extends StatelessWidget {
  const RippleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topRight, colors: [
              Color(0xffffccbc),
              Color(0xfffafafa),
            ]),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 32),
                child: Row(
                  children: [
                    InkWell(
                      child: Icon(Icons.close, color: AppColors.textColor),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    Center(
                      widthFactor: 2.2,
                      child: Text(
                        "Set Price Alert",
                        style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 32, bottom: 8),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: AppColors.textColor,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      spreadRadius: 2,
                      offset: Offset(0, 1),
                    )
                  ],
                  border: Border.all(
                    width: 4,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7xu3gpXY6jj9qOnsWK-BE8vbmXzOloARFqgjSSPhUDje5eSzYaLL_KGGcYLmcKEED_-U&usqp=CAU'),
                ),
              ),
              Text(
                "XRP",
                style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Current Price \$ 0,9941 ",
                style: AppTextStyle.headline(context, AppColors.subTittleColor).copyWith(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0, bottom: 32),
                child: Text(
                  "\$1,20",
                  style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text("-10%"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text("-5%"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text("+5%"),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 50,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text("+10%"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0, bottom: 32),
                child: Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Global Average Price",
                        style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      const Icon(Icons.expand_more_outlined)
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16),
                width: MediaQuery.of(context).size.width,
                height: 200,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("1"),
                        Text("4"),
                        Text("7"),
                        Text("00"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("2"),
                        Text("5"),
                        Text("8"),
                        Text("0"),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Text("3"),
                        Text("6"),
                        Text("9"),
                        Icon(Icons.cancel_presentation),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  "Set Alert",
                  style: AppTextStyle.headline(context, AppColors.tittleColor).copyWith(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
