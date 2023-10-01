// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:news_app_amit/core/helper/snack_bar.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> customUrlLauncher(BuildContext context,
    {required String? link}) async {
  if (link != null) {
    if (await canLaunchUrl(Uri.parse(link))) {
      await launchUrl(
        Uri.parse(link),
        mode: LaunchMode.inAppWebView,
        webViewConfiguration: WebViewConfiguration(),
      );
    } else {
      showSnack(context, message: link);
    }
  }
}
