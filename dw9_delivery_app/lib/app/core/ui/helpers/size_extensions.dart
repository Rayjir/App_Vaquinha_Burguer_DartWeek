import 'package:flutter/material.dart';

extension SizeExtensions on BuildContext {
  double get screenwidth => MediaQuery.of(this).size.width;
  double get screenheight => MediaQuery.of(this).size.height;

  double percentwidth(double percent) => screenwidth * percent;
  double percentheight(double percent) => screenheight * percent;
}
