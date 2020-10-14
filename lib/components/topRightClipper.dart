import 'package:flutter/material.dart';

class TopRightClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    final double _xScaling = size.width / 390;
    final double _yScaling = size.height / 448;
    path.lineTo(70 * _xScaling, 384 * _yScaling);
    path.cubicTo(
      211.385 * _xScaling,
      384 * _yScaling,
      326 * _xScaling,
      269.385 * _yScaling,
      326 * _xScaling,
      128 * _yScaling,
    );
    path.cubicTo(
      326 * _xScaling,
      -13.3849 * _yScaling,
      211.385 * _xScaling,
      -128 * _yScaling,
      70 * _xScaling,
      -128 * _yScaling,
    );
    path.cubicTo(
      -71.3849 * _xScaling,
      -128 * _yScaling,
      -186 * _xScaling,
      -13.3849 * _yScaling,
      -186 * _xScaling,
      128 * _yScaling,
    );
    path.cubicTo(
      -186 * _xScaling,
      269.385 * _yScaling,
      -71.3849 * _xScaling,
      384 * _yScaling,
      70 * _xScaling,
      384 * _yScaling,
    );
    path.cubicTo(
      70 * _xScaling,
      384 * _yScaling,
      70 * _xScaling,
      384 * _yScaling,
      70 * _xScaling,
      384 * _yScaling,
    );
    path.lineTo(70 * _xScaling, 448 * _yScaling);
    path.cubicTo(
      246.731 * _xScaling,
      448 * _yScaling,
      390 * _xScaling,
      304.731 * _yScaling,
      390 * _xScaling,
      128 * _yScaling,
    );
    path.cubicTo(
      390 * _xScaling,
      -48.7311 * _yScaling,
      246.731 * _xScaling,
      -192 * _yScaling,
      70 * _xScaling,
      -192 * _yScaling,
    );
    path.cubicTo(
      -106.731 * _xScaling,
      -192 * _yScaling,
      -250 * _xScaling,
      -48.7311 * _yScaling,
      -250 * _xScaling,
      128 * _yScaling,
    );
    path.cubicTo(
      -250 * _xScaling,
      304.731 * _yScaling,
      -106.731 * _xScaling,
      448 * _yScaling,
      70 * _xScaling,
      448 * _yScaling,
    );
    path.cubicTo(
      70 * _xScaling,
      448 * _yScaling,
      70 * _xScaling,
      448 * _yScaling,
      70 * _xScaling,
      448 * _yScaling,
    );
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
