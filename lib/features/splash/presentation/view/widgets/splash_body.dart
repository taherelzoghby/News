import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:news_app_amit/core/consts/assets.dart';
import 'package:news_app_amit/core/consts/style.dart';
import 'package:news_app_amit/features/news_page/presentation/view/home_page.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    navigateFuture();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ///animate logo
        TweenAnimationBuilder<double>(
          tween: Tween(begin: 0, end: size.height * .05.h),
          duration: const Duration(seconds: 3),
          builder: (_, angle, child) {
            return SvgPicture.asset(
              AppAssets.logo,
              height: angle,
            );
          },
        ),
        SizedBox(height: size.height * .05.h),

        ///linear progress indicator
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 40.sp),
          child: const LinearProgressIndicator(color: AppConsts.mainColor),
        ),
      ],
    );
  }

  ///navigate to home
  void navigateFuture() => Future.delayed(
        const Duration(seconds: 3),
        () => Get.off(() => const HomePage()),
      );
}
