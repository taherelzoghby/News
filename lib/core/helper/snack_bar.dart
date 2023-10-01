import 'package:flutter/material.dart';

void showSnack(BuildContext context, {required String message}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('Cannot Launch $message'),
    ),
  );
}
