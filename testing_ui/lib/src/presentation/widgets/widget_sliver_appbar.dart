import 'package:flutter/material.dart';
import 'package:testing_ui/src/utils/app_color.dart';
import 'package:testing_ui/src/utils/app_text_style.dart';

class SliverWidget extends StatelessWidget {
  const SliverWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 80,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                title: Text("Settings", style: AppTextStyle.headline(context, AppColors.textColor)),
                titlePadding: const EdgeInsets.only(left: 16)),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 42,
                    decoration: BoxDecoration(
                      color: AppColors.secondaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const ListTile(
                      leading:  Icon(Icons.search),
                      title: Text("Search"),
                      trailing: Icon(Icons.mic),
                    ),
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
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  title: Text(
                    "Imrose Bhuiyan",
                    style: AppTextStyle.tittle(context, AppColors.textColor),
                  ),
                  subtitle: Text(
                    "Manage HeyTap Cloud, Find My Phone, sign-in devices, and more ",
                    style: AppTextStyle.tittle(context, AppColors.secondaryColor),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.sim_card_rounded,
                    color: Colors.green,
                  ),
                  title: Text(
                    "SIM card & mobile data",
                    style: AppTextStyle.tittle(context, AppColors.textColor),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.wifi,
                    color: Colors.purple,
                  ),
                  title: Text(
                    "Wi-Fi",
                    style: AppTextStyle.tittle(context, AppColors.textColor),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.bluetooth,
                    color: Colors.orange,
                  ),
                  title: Text(
                    "Bluetooth",
                    style: AppTextStyle.tittle(context, AppColors.textColor),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  title: Text(
                    "Connection & sharing",
                    style: AppTextStyle.tittle(context, AppColors.textColor),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person_sharp,
                    color: Colors.blue,
                  ),
                  title: Text(
                    "Personalizations",
                    style: AppTextStyle.tittle(context, AppColors.textColor),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home_outlined,
                    color: Colors.yellowAccent,
                  ),
                  title: Text(
                    "Home screen,Lock screen & Always-On Display",
                    style: AppTextStyle.tittle(context, AppColors.textColor),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.cast_connected_outlined,
                    color: Colors.pink,
                  ),
                  title: Text(
                    "Display & brightness",
                    style: AppTextStyle.tittle(context, AppColors.textColor),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.volume_up_outlined,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "Sound & vibration",
                    style: AppTextStyle.tittle(context, AppColors.textColor),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.notifications_active_rounded,
                    color: Colors.redAccent,
                  ),
                  title: Text(
                    "Notifications & status bar",
                    style: AppTextStyle.tittle(context, AppColors.textColor),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.password,
                    color: Colors.tealAccent,
                  ),
                  title: Text(
                    "Password & biometrics",
                    style: AppTextStyle.tittle(context, AppColors.textColor),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.privacy_tip_outlined,
                    color: Colors.lime,
                  ),
                  title: Text(
                    "Privacy",
                    style: AppTextStyle.tittle(context, AppColors.textColor),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.security_outlined,
                    color: Colors.lightBlueAccent,
                  ),
                  title: Text(
                    "Security",
                    style: AppTextStyle.tittle(context, AppColors.textColor),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.local_convenience_store_outlined,
                    color: Colors.green,
                  ),
                  title: Text(
                    "Convenience tools",
                    style: AppTextStyle.tittle(context, AppColors.textColor),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.secondaryColor,
                  ),
                ),
              ],
            ),
          ]))
        ],
      ),
    );
  }
}
