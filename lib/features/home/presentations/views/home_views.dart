import 'package:bookly/features/home/presentations/views/widget/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  HomeViewBody(),
    );
  }
}