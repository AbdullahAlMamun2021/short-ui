import 'package:flutter/material.dart';
import 'package:flutter_ui/src/utils/app_colors.dart';
import 'package:flutter_ui/src/utils/app_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade50,
        leading: Icon(
          Icons.apps_rounded,
          color: AppColors.textColor,
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.search,
              color: AppColors.textColor,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const CircleAvatar(
            backgroundImage:
                NetworkImage('https://yt3.ggpht.com/ytc/AKedOLQuCYL7K6Bg4d1dkz6pbMsQF0eanQF4KRX25urwOg=s900-c-k-c0x00ffffff-no-rj'),
          ),
          const SizedBox(width: 16)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hello",
                    style: AppTextStyle.headline(context, Colors.grey).copyWith(
                      fontSize: 30,
                    ),
                  ),
                  Text(
                    "Rakib K.",
                    style: AppTextStyle.headline(context, AppColors.textColor).copyWith(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16, bottom: 16),
                    padding: const EdgeInsets.all(16),
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.orangeAccent.withOpacity(.5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "50% off",
                              style: AppTextStyle.headline(context, Colors.black).copyWith(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "take any courses",
                              style: AppTextStyle.headline(context, Colors.black45).copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Container(
                              width: 70,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: Colors.black,
                              ),
                              child: Center(
                                  child: Text(
                                "Join Now",
                                style: AppTextStyle.headline(context, Colors.white).copyWith(),
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Text(
                      "Find Your Job",
                      style: AppTextStyle.headline(context, Colors.black).copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 180,
                        width: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.blueAccent.withOpacity(.2),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                                child: const Icon(Icons.workspaces_outline, color: Colors.black),
                              ),
                              Text(
                                "44.8k",
                                style: AppTextStyle.headline(context, Colors.black).copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Remote jobs",
                                style: AppTextStyle.headline(context, Colors.grey).copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            height: 80,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.purpleAccent.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              leading: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                                child: const Icon(Icons.work_outline_outlined, color: Colors.black),
                              ),
                              title: Text(
                                "66.8k",
                                style: AppTextStyle.headline(context, Colors.black).copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Full time",
                                style: AppTextStyle.headline(context, Colors.grey).copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 80,
                            width: 140,
                            decoration: BoxDecoration(
                              color: Colors.green.withOpacity(.3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: ListTile(
                              leading: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.white,
                                ),
                                child: const Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                ),
                              ),
                              title: Text(
                                "66.8k",
                                style: AppTextStyle.headline(context, Colors.black).copyWith(fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              subtitle: Text(
                                "Full time",
                                style: AppTextStyle.headline(context, Colors.grey).copyWith(fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 16),
                        child: Text(
                          "Recent Job List",
                          style: AppTextStyle.headline(context, Colors.black).copyWith(fontSize: 22, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Text(
                        "See all",
                        style: AppTextStyle.headline(context, Colors.grey).copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 0.2, offset: Offset(0, 0.1))]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.purpleAccent.withOpacity(0.3),
                            ),
                            child: const Icon(Icons.design_services_outlined),
                          ),
                          title: Text(
                            "Product Designer",
                            style: AppTextStyle.headline(context, Colors.black).copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          trailing: const Icon(
                            Icons.add_to_queue_outlined,
                            color: Colors.grey,
                          ),
                          subtitle: Text(
                            "\$10K - 12K/month",
                            style: AppTextStyle.headline(context, Colors.grey).copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              width: 120,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade50,
                              ),
                              child: const Center(child: Text("Senior Designer")),
                            ),
                            Container(
                              width: 80,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade50,
                              ),
                              child: const Center(child: Text("Full time")),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              margin: const EdgeInsets.only(right: 16),
                              width: 70,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orangeAccent.shade100,
                              ),
                              child: const Center(child: Text("Apply")),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 0.2, offset: Offset(0, 0.1))]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ListTile(
                          leading: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.purpleAccent.withOpacity(0.3),
                            ),
                            child: const Icon(Icons.design_services_outlined),
                          ),
                          title: Text(
                            "Graphics Designer",
                            style: AppTextStyle.headline(context, Colors.black).copyWith(fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          trailing: const Icon(
                            Icons.bookmark,
                            color: Colors.grey,
                          ),
                          subtitle: Text(
                            "\$10K - 12K/month",
                            style: AppTextStyle.headline(context, Colors.grey).copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              width: 120,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey.shade50,
                              ),
                              child: const Center(child: Text("Senior Designer")),
                            ),
                            Container(
                              width: 80,
                              height: 25,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey.shade50),
                              child: const Center(child: Text("Full time")),
                            ),
                            const SizedBox(width: 10),
                            Container(
                              margin: const EdgeInsets.only(right: 16),
                              width: 70,
                              height: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.orangeAccent.shade100,
                              ),
                              child: const Center(child: Text("Apply")),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                  top: 70,
                  right: 0,
                  child: SizedBox(height: 160, child: Image.network('https://www.pngall.com/wp-content/uploads/2018/03/Child-PNG-Pic.png')))
            ],
          ),
        ),
      ),
    );
  }
}
