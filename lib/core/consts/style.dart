import 'package:flutter/material.dart';

abstract class AppConsts {
  static const Color mainColor = Colors.red;
  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color grey = Colors.grey;
  static const Color orange = Color.fromRGBO(255, 221, 79, 1);
  static const Color previewColor = Color.fromRGBO(239, 130, 98, 1);
  //aspect ratio
  static const double aspect16on2 = 16 / 2;
  static const double aspect16on14 = 16 / 14;
  static const double aspect16on13 = 16 / 13;
  static const double aspect16on1 = 16 / 1;
  static const double aspect20on36 = 20 / 36;
  static const double aspect20on2 = 20 / 2;
  static const double aspect16on4 = 16 / 4;
  static const double aspect16on5 = 16 / 5;
  static const double aspect16on3 = 16 / 3;
  static const double aspect16on8 = 16 / 8;
  static const double aspect40on1 = 40 / 1;
  static const double aspect300on1 = 300 / 1;
  static const double aspectRatioButtonAuth = 3 / .4;
  static const double aspectRatioButtonApply = 2.1 / .65;
  static const double aspect13on8 = 13 / 8;
  static const double aspect13on9 = 13 / 9;
  static const double aspect13on10 = 13 / 10;
  static const double aspect13on5 = 13 / 5;
  static const double aspect10on19 = 10 / 19;
  static const double aspect16on7 = 16 / 7;
  static const double aspect2point5on3 = 2.5 / 3;
  static const double halfScreenHeight = 565;
  //padding
  static const EdgeInsets mainPadding = EdgeInsets.symmetric(horizontal: 15);
  static const EdgeInsets passing25 = EdgeInsets.symmetric(horizontal: 25);
  static const EdgeInsets padding10Horiz = EdgeInsets.symmetric(horizontal: 10);
  static const EdgeInsets padding10h8v =
  EdgeInsets.symmetric(horizontal: 10, vertical: 8);
  static const EdgeInsets allPadding8 = EdgeInsets.all(8);
  static const EdgeInsets allPadding15 = EdgeInsets.all(15);
  static const EdgeInsets verticalPadding5 = EdgeInsets.symmetric(vertical: 5);
  static const EdgeInsets verticalPadding10 =
  EdgeInsets.symmetric(vertical: 10);
  static const EdgeInsets topPadding20 = EdgeInsets.only(top: 20);
  static const EdgeInsets paddH40 = EdgeInsets.symmetric(horizontal: 40);
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
