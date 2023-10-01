import 'package:flutter/material.dart';

class customLoading extends StatelessWidget {
  const customLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
