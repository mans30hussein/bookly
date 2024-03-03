import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class FeatureItemListView extends StatelessWidget {
  const FeatureItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: AspectRatio(
        aspectRatio: 2.7 / 4, // width : height
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,          
            borderRadius: BorderRadius.circular(20),
            //border:
          ),
          child: Image.asset(AssetsDate.test_Image , fit: BoxFit.contain,),
        ),
      ),
    );
  }
}
