import 'package:flutter/material.dart';

import 'widgets/splash_view_body.dart';

class SplashViews extends StatelessWidget {
  const SplashViews({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}