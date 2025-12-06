import 'package:flutter/material.dart';

abstract class MyColors {
  late Color black;
  late Color white;
  late Color primary;
  late Color pink;
  late Color bg1;
  late Color bg2;
  late Color stroke;
  late Color danger;
  late Color shadow;

  late Color darkBrown;
  late Color brown;
  late Color lightBrown;
}

class AppColors implements MyColors {
  @override
  Color black = const Color(0xff161616);

  @override
  Color white = const Color(0xffFFFFFF);

  @override
  Color primary = const Color(0xff9936A9);

  @override
  Color pink = const Color(0xffE34AC2);

  @override
  Color bg1 = const Color(0xffD9D9D9).withOpacity(0.5);

  @override
  Color bg2 = const Color(0xffC48EC0).withOpacity(0.75);

  @override
  Color stroke = const Color(0xff5A4300);

  @override
  Color danger = const Color.fromARGB(255, 224, 35, 11);

  @override
  Color shadow = const Color(0xffFF07DE).withOpacity(0.5);

  @override
  Color darkBrown = const Color(0xff532B0F);

  @override
  Color brown = const Color(0xff6B3713);

  @override
  Color lightBrown = const Color(0xff9B511C);
}
