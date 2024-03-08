// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:news_app_amit/core/consts/style.dart';

import 'home_body_get_builder.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppConsts.boxDecorationHomePage,
      child: HomeBodyGetBuilder(
        index: index,
      ),
    );
  }
}
