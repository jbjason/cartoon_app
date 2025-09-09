import 'package:flutter/material.dart';

class WelcomeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final w = size.width, h = size.height;
    final path = Path();
    path.lineTo(0, h * .6);

    final double px1 = 0, py1 = h * .7;
    final double px2 = w * .15, py2 = h * .7;
    final double px3 = w * .15, py3 = h * .75;
    path.cubicTo(px1, py1, px2, py2, px3, py3);

    final double qx1 = w * .15, qy1 = h * .8;
    final double qx2 = 0, qy2 = h * .8;
    final double qx3 = 0, qy3 = h * .9;
    path.cubicTo(qx1, qy1, qx2, qy2, qx3, qy3);

    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, h * .9);

    final double rx1 = w, ry1 = h * .8;
    final double rx2 = w * .85, ry2 = h * .8;
    final double rx3 = w * .85, ry3 = h * .75;
    path.cubicTo(rx1, ry1, rx2, ry2, rx3, ry3);

    final double sx1 = w * .85, sy1 = h * .7;
    final double sx2 = w, sy2 = h * .7;
    final double sx3 = w, sy3 = h * .6;
    path.cubicTo(sx1, sy1, sx2, sy2, sx3, sy3);

    path.lineTo(w, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}