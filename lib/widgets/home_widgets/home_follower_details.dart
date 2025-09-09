import 'package:cartoon_app/constant/my_color.dart';
import 'package:cartoon_app/constant/my_constant.dart';
import 'package:cartoon_app/widgets/home_widgets/home_clippers.dart';
import 'package:flutter/material.dart';

class HomeFollowerDetails extends StatelessWidget {
  const HomeFollowerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final followerPercent = (MyConstant.cartoonUser[6].number / 2000);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _followersText('${MyConstant.cartoonUser[6].number} ', ''),
        SizedBox(
          height: 85,
          width: 85,
          child: CustomPaint(
            painter: HomeCircularprogress(
              backColor: MyColor.blueBack.withOpacity(.2),
              frontColor: MyColor.blueBack,
              strokeWidth: 13,
              value: followerPercent,
            ),
            child: Center(
              child: Text(
                '+${(followerPercent * 100).toStringAsFixed(0)}%',
                style: const TextStyle(
                    color: MyColor.textColor, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        _followersText('2000 ', 'Non-')
      ],
    );
  }

  Widget _followersText(String text, String subText) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Text(
                text,
                style: const TextStyle(
                    color: MyColor.textColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                height: 8,
                width: 8,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: subText != ''
                      ? MyColor.blueBack.withOpacity(.2)
                      : MyColor.blueBack,
                ),
              ),
            ],
          ),
          Text(
            '$subText Follower\'s',
            style: const TextStyle(color: MyColor.textColor, fontSize: 11),
          ),
        ],
      );
}
