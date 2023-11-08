import 'package:flutter/material.dart';
import 'package:news_app_amit/core/consts/style.dart';

class FailWidget extends StatelessWidget {
  const FailWidget({
    Key? key,
    required this.errorMessage,
  }) : super(key: key);
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: AppConsts.styleError,
      ),
    );
  }
}
