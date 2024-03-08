
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:news_app_amit/core/consts/assets.dart';
import 'package:news_app_amit/core/helper/handle_image_widget.dart';

class CustomImageAnimation extends StatelessWidget {
  const CustomImageAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: size.height * .05.h),
      duration: const Duration(seconds: 3),
      builder: (_, angle, child) {
        return HandleImageWidget(
          image: AppAssets.logo,
          height: angle,
        );
      },
    );
  }
}
