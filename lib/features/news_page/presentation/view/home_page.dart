import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app_amit/core/consts/data.dart';
import 'package:news_app_amit/core/consts/style.dart';
import 'package:news_app_amit/features/news_page/presentation/view/widgets/home_page_body.dart';
import 'package:news_app_amit/features/news_page/presentation/view_model/fetch_news_controller.dart';

import '../../../../core/consts/strings.dart';
import '../../../../core/services/service_locator.dart';
import '../../data/home_repo/home_repo_implementaion.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(
      () => FetchNewsController(
        repoHome: getIt.get<HomeRepoImplementation>(),
      ),
    );
    return DefaultTabController(
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            Strings.appBar,
            style: AppConsts.style20,
          ),
          bottom: TabBar(
            tabs: tabs,
            unselectedLabelColor: AppConsts.grey,
            labelColor: AppConsts.white,
            isScrollable: true,
            indicatorColor: AppConsts.white,
          ),
          backgroundColor: AppConsts.mainColor,
        ),
        body: TabBarView(
          children: List.generate(
            tabs.length,
            (index) => HomePageBody(index: index),
          ),
        ),
      ),
    );
  }
}