import 'package:flutter/material.dart';

import '../../utils/app_text_style.dart';

class ListViewDemo extends StatelessWidget {
   ListViewDemo({Key? key}) : super(key: key);
  final List<String> entries = <String>['A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return  Container(
                margin:const  EdgeInsets.only(top: 16),
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(
                  color: const Color(0xffeeeeee),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text("Opening Festival"),
                    Row(
                      children: [
                        const Icon(
                          Icons.access_time_rounded,
                          size: 15,
                          color: Colors.grey,
                        ),
                        Text(
                          "  May 21, 09.00 PM",
                          style: AppTextStyle.headline(context, Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }
        ),

    );
  }
}
