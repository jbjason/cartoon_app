import 'package:cartoon_app/constant/my_color.dart';
import 'package:cartoon_app/constant/my_image.dart';
import 'package:flutter/material.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('Hey Jb Jason ..!',
                  style: TextStyle(
                      color: MyColor.textColor, fontWeight: FontWeight.bold)),
              Text('Find you correct status.',
                  style: TextStyle(color: MyColor.textColor, fontSize: 18)),
            ],
          ),
          const Spacer(),
          _iconContainer(MyImage.bingImg),
          const SizedBox(width: 10),
          _iconContainer(MyImage.settingsImg),
        ],
      ),
    );
  }

  Widget _iconContainer(String img) => Container(
        width: 50,
        padding: const EdgeInsets.all(1.5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [MyColor.blueBack, MyColor.whiteCardG1],
              stops: [0.0, 0.7]),
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [MyColor.whiteItemG1, MyColor.whiteCardG1],
            ),
          ),
          child: Image.asset(img, fit: BoxFit.contain, color: MyColor.blueBack),
        ),
      );
}
