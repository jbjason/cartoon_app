// ignore_for_file: depend_on_referenced_packages
import 'package:cartoon_app/constant/my_color.dart';
import 'package:cartoon_app/constant/my_constant.dart';
import 'package:cartoon_app/widgets/home_widgets/home_clippers.dart';
import 'package:flutter/cupertino.dart';
import 'package:vector_math/vector_math.dart' as math;

class HomePageItem extends StatefulWidget {
  const HomePageItem({super.key});
  @override
  State<HomePageItem> createState() => _HomePageItemState();
}

class _HomePageItemState extends State<HomePageItem> {
  final _controller = PageController(viewportFraction: 0.6);
  double value = 0;

  @override
  void initState() {
    super.initState();
    _controller.addListener(_listen);
  }

  void _listen() {
    value = _controller.page!;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final items = MyConstant.cartoons;
    return PageView.builder(
      clipBehavior: Clip.none,
      controller: _controller,
      itemCount: items.length,
      itemBuilder: (context, i) {
        final percent = (i - value).clamp(-1, 1);
        final radias = math.radians(10.0 * percent);
        final item = items[i];
        return Stack(
          children: [
            const Positioned(
              bottom: 20,
              left: 20,
              right: 20,
              height: 30,
              child: DecoratedBox(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: MyColor.blueBack,
                    spreadRadius: 1,
                    blurRadius: 20,
                  )
                ]),
              ),
            ),
            Positioned.fill(
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..rotateZ(radias),
                child: ClipPath(
                  clipper: HomeItemClip(),
                  child: Container(
                    padding: const EdgeInsets.all(0.3),
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      gradient: const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [MyColor.blueBack, MyColor.whiteCardG1],
                        stops: [0.0, 0.5],
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.all(1.5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(31),
                        gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [MyColor.whiteItemG1, MyColor.whiteCardG1],
                          stops: [0.15, 0.5],
                        ),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            top: -20,
                            bottom: -20,
                            left: -10,
                            right: -10,
                            child: Image.asset(item.img, fit: BoxFit.contain),
                          ),
                          // top Icon & bottom Text
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    padding: const EdgeInsets.all(7),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: const LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          MyColor.whiteItemG1,
                                          MyColor.whiteCardG1
                                        ],
                                      ),
                                      border: Border.all(
                                          width: .7,
                                          color: const Color(0xFFEEEEEE)),
                                    ),
                                    child: const Center(
                                      child: Icon(
                                        CupertinoIcons
                                            .dot_radiowaves_left_right,
                                        color: MyColor.blueBack,
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Text(
                                  item.title,
                                  style: const TextStyle(
                                    color: MyColor.textColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 5),
                                Text(item.nickname,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: const TextStyle(
                                        fontSize: 11,
                                        color: MyColor.textColor)),
                                const SizedBox(height: 20),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.removeListener(_listen);
    _controller.dispose();
    super.dispose();
  }
}
