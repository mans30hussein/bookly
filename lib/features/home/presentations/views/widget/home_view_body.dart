import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentations/views/widget/features_book_list_view.dart';
import 'package:flutter/material.dart';
import 'best_seller_item.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          FeatureBooksListView(),
          SizedBox(
            height: 16,
          ),
          Text(
            "Best Seller",
            style: Stayles.textStyle18,
          ),
          SizedBox(
            height: 16,
          ),
          BestSellerItems(),
        ],
      ),
    );
  }
}

