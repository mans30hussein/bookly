import 'package:flutter/material.dart';

import 'custom_item_view.dart';

class FeatureBooksListView extends StatelessWidget {
  const FeatureBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
       height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) => const FeatureItemListView(),
    ));
  }
}