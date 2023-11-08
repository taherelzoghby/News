import 'package:flutter/material.dart';

abstract class AppConsts {
  static const Color mainColor = Colors.red;
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grey = Colors.grey;
  static const Color orange = Color.fromRGBO(255, 221, 79, 1);
  static const Color previewColor = Color.fromRGBO(239, 130, 98, 1);
  static List<Color> colorsGradients = [
    white,
    white,
    grey.withOpacity(.1),
  ];
  static const style18 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );
  static const style20 = TextStyle(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: white,
  );

  static const TextStyle styleError = TextStyle(
    color: black,
    fontWeight: FontWeight.w600,
    fontSize: 18,
  );

  static BoxDecoration boxDecorationHomePage = BoxDecoration(
    gradient: LinearGradient(
      colors: AppConsts.colorsGradients,
    ),
  );
  static BoxDecoration boxDecorationItem = BoxDecoration(
    gradient: LinearGradient(
      colors: AppConsts.colorsGradients,
    ),
  );
}
