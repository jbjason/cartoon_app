import 'package:cartoon_app/widgets/home_widgets/home_activity_list.dart';
import 'package:cartoon_app/widgets/home_widgets/home_follower_details.dart';
import 'package:cartoon_app/constant/my_color.dart';
import 'package:cartoon_app/widgets/home_widgets/home_clippers.dart';
import 'package:flutter/material.dart';

class HomeBodyBottom extends StatelessWidget {
  const HomeBodyBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: HomeBodyBottomClip(),
      child: Container(
        padding: const EdgeInsets.only(top: 30, left: 20),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.white38, MyColor. whiteCardG1, MyColor.whiteCardG2],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 35),
            HomeFollowerDetails(),
            SizedBox(height: 10),
            Text(
              'Profile Activity\'s',
              style: TextStyle(color: MyColor.textColor, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            SizedBox(height: 50, child: HomeActivityList())
          ],
        ),
      ),
    );
  }
}
