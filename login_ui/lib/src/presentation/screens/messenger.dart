import 'package:flutter/material.dart';
import 'package:login_ui/src/utils/app_color.dart';
import 'package:login_ui/src/utils/app_text_style.dart';

class Messenger extends StatefulWidget {
  const Messenger({Key? key}) : super(key: key);

  @override
  _MessengerState createState() => _MessengerState();
}

class _MessengerState extends State<Messenger> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.mBackgroundColor,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage("img/background.jpg"),
              ),
              Positioned(
                  top: 0,
                  right: 0,
                  child: SizedBox(
                    height: 18,
                    width: 18,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.mBackgroundColor, border: Border.all(width: 2.0), borderRadius: BorderRadius.circular(50)),
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        child: Text(
                          "2",
                          style: AppTextStyle.chat(context, AppColors.mTextColor),
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
        title: Text(
          "Chats",
          style: AppTextStyle.chat(context, AppColors.mSecondaryColor).copyWith(fontSize: 25, fontWeight: FontWeight.w400),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: AppColors.mHintColor,
            child: Icon(Icons.camera_alt, size: 20, color: AppColors.mSecondaryColor),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor: AppColors.mHintColor,
              child: Icon(Icons.create_rounded, size: 20, color: AppColors.mSecondaryColor),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.width,
                height: 40,
                decoration: BoxDecoration(color: AppColors.mHintColor, borderRadius: BorderRadius.circular(25)),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.search,
                      color: AppColors.mSecondaryColor.withOpacity(0.3),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text("Search", style: AppTextStyle.chat(context, AppColors.mSecondaryColor.withOpacity(0.3)).copyWith(fontSize: 15))
                  ],
                )),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: CircleAvatar(
                            backgroundColor: AppColors.mHintColor,
                            child: Icon(
                              Icons.video_call,
                              size: 30,
                              color: AppColors.mSecondaryColor,
                            ),
                          ),
                        ),
                        Text(
                          "Create video\ncall",
                          textAlign: TextAlign.center,
                          style: AppTextStyle.chat(context, AppColors.mSecondaryColor),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          children: [
                            const SizedBox(
                              height: 60,
                              width: 60,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("img/background.jpg"),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.mBackgroundColor,
                                      border: Border.all(width: 2.0),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Icon(
                                    Icons.circle,
                                    size: 15,
                                    color: AppColors.mGreen,
                                  ),
                                )),
                          ],
                        ),
                        Text(
                          "Pallab\nMistry",
                          textAlign: TextAlign.center,
                          style: AppTextStyle.chat(context, AppColors.mSecondaryColor),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          children: [
                            const SizedBox(
                              height: 60,
                              width: 60,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("img/background.jpg"),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.mBackgroundColor,
                                      border: Border.all(width: 2.0),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Icon(
                                    Icons.circle,
                                    size: 15,
                                    color: AppColors.mGreen,
                                  ),
                                )),
                          ],
                        ),
                        Text(
                          "Sadman\nEfaz",
                          textAlign: TextAlign.center,
                          style: AppTextStyle.chat(context, AppColors.mSecondaryColor),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Stack(
                          children: [
                            const SizedBox(
                              height: 60,
                              width: 60,
                              child: CircleAvatar(
                                backgroundImage: AssetImage("img/background.jpg"),
                              ),
                            ),
                            Positioned(
                                bottom: 0,
                                right: 0,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.mBackgroundColor,
                                      border: Border.all(width: 2.0),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Icon(
                                    Icons.circle,
                                    size: 15,
                                    color: AppColors.mGreen,
                                  ),
                                )),
                          ],
                        ),
                        Text(
                          "Imrose0\nBhuiyan",
                          textAlign: TextAlign.center,
                          style: AppTextStyle.chat(context, AppColors.mSecondaryColor),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("img/background.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              title: Row(
                children: [
                  Text(
                    "Brothers",
                    style: AppTextStyle.chat(context, AppColors.mTextColor),
                  ),
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )
                ],
              ),
              subtitle: Text.rich(
                TextSpan(text: "you: Hello", style: AppTextStyle.chat(context, AppColors.mTextColor).copyWith(fontSize: 14), children: [
                  TextSpan(
                    text: " .10.00 PM",
                    style: AppTextStyle.chat(context, AppColors.mTextColor).copyWith(fontSize: 16),
                  )
                ]),
              ),
              trailing: Icon(
                Icons.check_circle_outline,
                color: AppColors.mHintColor,
              ),
            ),
            ListTile(
                leading: Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.mBackgroundColor, border: Border.all(width: 2.0), borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.circle,
                            size: 15,
                            color: AppColors.mGreen,
                          ),
                        ))
                  ],
                ),
                title: Text(
                  "Ali Rakib",
                  style: AppTextStyle.chat(context, AppColors.mTextColor),
                ),
                subtitle: Text.rich(
                  TextSpan(text: "Ali: Hi", style: AppTextStyle.chat(context, AppColors.mTextColor).copyWith(fontSize: 14), children: [
                    TextSpan(
                      text: " .5.00 AM",
                      style: AppTextStyle.chat(context, AppColors.mTextColor).copyWith(fontSize: 16),
                    )
                  ]),
                ),
                trailing: Icon(
                  Icons.check_circle,
                  color: AppColors.mHintColor,
                )),
            ListTile(
                leading: Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("img/background.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.mBackgroundColor, border: Border.all(width: 2.0), borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.circle,
                            size: 15,
                            color: AppColors.mGreen,
                          ),
                        ))
                  ],
                ),
                title: Text(
                  "Ahmed Shorif",
                  style: AppTextStyle.chat(context, AppColors.mTextColor),
                ),
                subtitle: Text.rich(TextSpan(
                    text: "you: Alhamdulilah",
                    style: AppTextStyle.chat(context, AppColors.mTextColor).copyWith(fontSize: 14),
                    children: [
                      TextSpan(
                        text: " .8.00 AM",
                        style: AppTextStyle.chat(context, AppColors.mTextColor).copyWith(fontSize: 16),
                      )
                    ])),
                trailing: Icon(
                  Icons.check_circle_outline,
                  color: AppColors.mHintColor,
                )),
            ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                title: Text(
                  "Saurov",
                  style: AppTextStyle.chat(context, AppColors.mTextColor),
                ),
                subtitle: Text.rich(
                    TextSpan(text: "you: No", style: AppTextStyle.chat(context, AppColors.mTextColor).copyWith(fontSize: 14), children: [
                  TextSpan(
                    text: " .7.03 PM",
                    style: AppTextStyle.chat(context, AppColors.mTextColor).copyWith(fontSize: 16),
                  )
                ])),
                trailing: Icon(
                  Icons.check_circle,
                  color: AppColors.mHintColor,
                )),
            ListTile(
                leading: Stack(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: const DecorationImage(
                          image: AssetImage("img/background.jpg"),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: Container(
                          decoration: BoxDecoration(
                              color: AppColors.mBackgroundColor, border: Border.all(width: 2.0), borderRadius: BorderRadius.circular(50)),
                          child: Icon(
                            Icons.circle,
                            size: 15,
                            color: AppColors.mGreen,
                          ),
                        ))
                  ],
                ),
                title: Text(
                  "Shafayate Shimul",
                  style: AppTextStyle.chat(context, AppColors.mTextColor),
                ),
                subtitle: Text.rich(TextSpan(
                    text: "you: Ki obostha",
                    style: AppTextStyle.chat(context, AppColors.mTextColor).copyWith(fontSize: 14),
                    children: [
                      TextSpan(
                        text: " .9.00 PM",
                        style: AppTextStyle.chat(context, AppColors.mTextColor).copyWith(fontSize: 16),
                      )
                    ])),
                trailing: Icon(
                  Icons.check_circle_outline,
                  color: AppColors.mHintColor,
                )),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              title: Text(
                "Md Emtiaj Ahmed ",
                style: AppTextStyle.chat(context, AppColors.mTextColor),
              ),
              subtitle: Text.rich(TextSpan(
                text: "Md: ok",
                style: AppTextStyle.chat(context, AppColors.mTextColor).copyWith(fontSize: 14),
                children: [
                  TextSpan(
                    text: " .3.42 AM",
                    style: AppTextStyle.chat(context, AppColors.mTextColor).copyWith(fontSize: 16),
                  ),
                ],
              )),
              trailing: Icon(
                Icons.check_circle,
                color: AppColors.mHintColor,
              ),
            ),
            Stack(
              children: [
                ListTile(
                  leading: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage("img/background.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  title: Text(
                    "Maruful Islam",
                    style: AppTextStyle.chat(context, AppColors.mTextColor),
                  ),
                  subtitle: Text.rich(
                    TextSpan(
                      text: "you: Accha",
                      style: AppTextStyle.chat(context, AppColors.mTextColor).copyWith(fontSize: 14),
                      children: [TextSpan(text: " .12:05 AM", style: AppTextStyle.chat(context, AppColors.mTextColor))],
                    ),
                  ),
                  trailing: Icon(
                    Icons.notifications_off,
                    color: AppColors.mHintColor,
                  ),
                ),
                Positioned(
                    top: 45,
                    left: 50,
                    child: Container(
                      decoration: BoxDecoration(
                          color: AppColors.mBackgroundColor, border: Border.all(width: 2.0), borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.circle,
                        size: 15,
                        color: AppColors.mGreen,
                      ),
                    ))
              ],
            ),
            ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                title: Text(
                  "BU CSE INFORMATION GROUP",
                  style: AppTextStyle.chat(context, AppColors.mTextColor),
                ),
                subtitle: Text.rich(TextSpan(
                    text: "Abdur: if Reported ",
                    style: AppTextStyle.chat(context, AppColors.mTextColor).copyWith(fontSize: 14),
                    children: [
                      TextSpan(
                        text: " .1.00 PM",
                        style: AppTextStyle.chat(context, AppColors.mTextColor).copyWith(fontSize: 16),
                      )
                    ])),
                trailing: Icon(
                  Icons.check_circle_outline,
                  color: AppColors.mHintColor,
                )),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("img/background.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              title: Text(
                "Imrose Bhuiyan",
                style: AppTextStyle.subtittle(context, AppColors.mTextColor),
              ),
              subtitle: Text(
                " Find My Phone",
                style: AppTextStyle.subtittle(context, AppColors.mTextColor).copyWith(fontSize: 12),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.secondaryColor,
              ),
            ),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              title: Text(
                "Imrose Bhuiyan",
                style: AppTextStyle.subtittle(context, AppColors.mTextColor),
              ),
              subtitle: Text(
                " Find My Phone",
                style: AppTextStyle.subtittle(context, AppColors.mTextColor).copyWith(fontSize: 12),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.secondaryColor,
              ),
            ),
            ListTile(
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage("img/background.jpg"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              title: Text(
                "Imrose Bhuiyan",
                style: AppTextStyle.subtittle(context, AppColors.mTextColor),
              ),
              subtitle: Text(
                " Find My Phone",
                style: AppTextStyle.subtittle(context, AppColors.mTextColor).copyWith(fontSize: 12),
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColors.secondaryColor,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.white60,
            backgroundColor: AppColors.mBackgroundColor,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.chat_bubble), label: "chats"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.group_sharp,
                    color: Colors.white60,
                  ),
                  label: "People"),
            ],
          ),
          Positioned(
            top: 8,
            right: 60,
            child: Container(
              height: 14,
              width: 25,
              decoration: BoxDecoration(color: Colors.green.withOpacity(0.2), borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: const EdgeInsets.only(left: 3),
                child: Text(
                  "99+",
                  style: AppTextStyle.chat(context, AppColors.mGreen).copyWith(fontSize: 11, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
