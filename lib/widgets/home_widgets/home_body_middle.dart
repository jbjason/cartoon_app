import 'package:cartoon_app/constant/my_color.dart';
import 'package:cartoon_app/constant/my_constant.dart';
import 'package:cartoon_app/widgets/home_widgets/home_clippers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBodyMiddle extends StatelessWidget {
  const HomeBodyMiddle({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: Container(
            padding: const EdgeInsets.only(bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Post insights',
                    style: TextStyle(color: MyColor.textColor)),
                const Spacer(),
                Container(
                  height: 20,
                  width: 200,
                  decoration: const BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: MyColor.blueBack,
                        spreadRadius: 1,
                        blurRadius: 20)
                  ]),
                ),
                const SizedBox(height: 5),
                const Text('Accounts Reached',
                    style: TextStyle(color: MyColor.textColor)),
              ],
            ),
          ),
        ),
        Positioned.fill(
          child: ClipPath(
            clipper: HomeBodyMiddleClip(),
            child: Container(
              padding: const EdgeInsets.only(
                  left: 40, right: 40, bottom: 50, top: 40),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 0.5, 0.99],
                  colors: [Colors.white30, Colors.white24, MyColor.whiteCardG1],
                ),
              ),
              child: ClipPath(
                clipper: HomeBodyMiddleClip(),
                child: Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white30, Colors.white24, Colors.white30],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _followStat(CupertinoIcons.heart_fill,
                          MyConstant.cartoonUser[0].number),
                      _followStat(CupertinoIcons.chat_bubble_fill,
                          MyConstant.cartoonUser[1].number),
                      _followStat(Icons.park, MyConstant.cartoonUser[2].number),
                      _followStat(
                          Icons.bookmarks, MyConstant.cartoonUser[3].number),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _followStat(IconData icon, int number) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: MyColor.blueBack),
          const SizedBox(height: 2),
          Text(
            number.toString(),
            style: const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: MyColor.textColor),
          ),
        ],
      );
}
