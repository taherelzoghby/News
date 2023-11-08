import 'package:flutter/material.dart';
import 'package:news_app_amit/core/consts/style.dart';

class CustomLoading extends StatelessWidget {
  const CustomLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppConsts.mainColor,
      ),
    );
  }
}
