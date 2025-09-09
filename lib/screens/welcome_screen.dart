import 'package:cartoon_app/widgets/welcome_widgets/welcome_text_and_image.dart';
import 'package:cartoon_app/constant/my_color.dart';
import 'package:cartoon_app/widgets/welcome_widgets/welcome_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: MyColor. blueBack,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColor. blueBack,
      body: SafeArea(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned.fill(
              child: ClipPath(
                clipper: WelcomeClipper(),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  decoration: BoxDecoration(
                    border: Border.all(width: 4, color:MyColor. blueBack),
                    borderRadius: BorderRadius.circular(35),
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [MyColor. whiteWelG1,MyColor.  whiteWelG2, MyColor. whiteWelG3],
                    ),
                  ),
                  // Text &  Image
                  child: const WelcomeTextAndImage(),
                ),
              ),
            ),
            Positioned(
                top: size.height * .71, left: 8, child: swipeText('Skip↠')),
            Positioned(
                top: size.height * .71, right: 8, child: swipeText('↞Login')),
          ],
        ),
      ),
    );
  }

  Widget swipeText(String s) => Text(
        s,
        textAlign: TextAlign.center,
        style: const TextStyle(
            fontSize: 11, color: MyColor. textColor, fontWeight: FontWeight.w700),
      );
}
