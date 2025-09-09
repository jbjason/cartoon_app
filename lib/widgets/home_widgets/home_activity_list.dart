import 'package:cartoon_app/constant/my_color.dart';
import 'package:cartoon_app/constant/my_constant.dart';
import 'package:flutter/material.dart';

class HomeActivityList extends StatelessWidget {
  const HomeActivityList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = MyConstant.cartoonUser;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: items.length,
      clipBehavior: Clip.none,
      itemBuilder: (context, i) {
        final index = items.length - i - 1;
        final item = items[index];
        return Container(
          width: 150,
          padding: const EdgeInsets.all(1),
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [MyColor.blueBack, MyColor.whiteCardG1],
                stops: [0.0, 0.7]),
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [MyColor.whiteItemG1, MyColor.whiteCardG1],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.title,
                  overflow: TextOverflow.ellipsis,
                  style:
                      const TextStyle(color: MyColor.textColor, fontSize: 11),
                ),
                const SizedBox(width: 8),
                Text(
                  item.number.toString(),
                  style: const TextStyle(
                      color: MyColor.textColor, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
