import 'package:cartoon_app/constant/my_color.dart';
import 'package:cartoon_app/widgets/home_widgets/home_clippers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeNavBar extends StatefulWidget {
  const HomeNavBar({super.key});
  @override
  State<HomeNavBar> createState() => _HomeNavBarState();
}

class _HomeNavBarState extends State<HomeNavBar> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: Row(
        children: [
          _navItem(CupertinoIcons.home, 0),
          _navItem(CupertinoIcons.search, 1),
          _navItem(CupertinoIcons.waveform, 2),
          _navItem(CupertinoIcons.person_2, 3),
        ],
      ),
    );
  }

  Widget _navItem(IconData icon, int i) => Expanded(
        child: InkWell(
          onTap: () => setState(() => _currentIndex = i),
          child: Container(
            color: MyColor. blueBack,
            child: ClipPath(
              clipper: i == _currentIndex ? HomeNavSelcted() : null,
              child: Container(
                decoration: BoxDecoration(
                  //color: Colors.white38,
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                   MyColor.   whiteCardG1.withOpacity(0.8),
                   MyColor.   whiteCardG1.withOpacity(0.7),
                    MyColor.  whiteCardG1.withOpacity(0.8),
                      //whiteCardG1,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 2),
                    Icon(icon, color: MyColor.textColor),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
