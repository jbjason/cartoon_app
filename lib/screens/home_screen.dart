import 'package:cartoon_app/widgets/home_widgets/home_appbar.dart';
import 'package:cartoon_app/widgets/home_widgets/home_body_bottom.dart';
import 'package:cartoon_app/widgets/home_widgets/home_body_middle.dart';
import 'package:cartoon_app/widgets/home_widgets/home_nav_bar.dart';
import 'package:cartoon_app/widgets/home_widgets/home_page_item.dart';
import 'package:cartoon_app/constant/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: MyColor. blueBack,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: MyColor.whiteCardG1,
      body: SafeArea(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Positioned(
                right: 0,
                left: 0,
                top: 0,
                height: size.height * .48,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    HomeAppbar(),
                    SizedBox(height: 10),
                    Expanded(child: HomePageItem()),
                  ],
                ),
              ),
              Positioned(
                top: size.height * .46,
                left: 0,
                right: 0,
                height: size.height * .2,
                child: const HomeBodyMiddle(),
              ),
              Positioned(
                top: size.height * .61,
                left: 0,
                right: 0,
                height: size.height * .37,
                child: const HomeBodyBottom(),
              ),
            ],
          ),
        ),
      ),
    //  extendBody: true,
      bottomNavigationBar: const HomeNavBar(),
    );
  }
}
