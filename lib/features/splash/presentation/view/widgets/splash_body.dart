import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_amit/core/consts/style.dart';
import 'package:news_app_amit/features/news_page/presentation/view/home_view.dart';

import 'custom_image_animation.dart';

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
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ///animate logo
        CustomImageAnimation(),
        AspectRatio(aspectRatio: AppConsts.aspect16on2),

        ///linear progress indicator
        Padding(
          padding: AppConsts.paddH40,
          child: LinearProgressIndicator(color: AppConsts.mainColor),
        ),
      ],
    );
  }

  ///navigate to home
  void navigateFuture() => Future.delayed(
        const Duration(seconds: 3),
        () => Get.off(() => const HomeView()),
      );
}
