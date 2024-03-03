import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'book_rating.dart';

class BestSellerItems extends StatelessWidget {
  const BestSellerItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.6 / 4, // width : height
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                //border:
              ),
              child: Image.asset(
                AssetsDate.test_Image,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(width: 30,),
           Expanded(
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.5,
                  child:  const Text(
                    "Harry Potter and the Goblet on Fire",
                    style: Stayles.textStyle20,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(height: 3,),
                const Text(
                    "J.K.Rowing",
                    style: Stayles.textStyle14,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3,),
                  Row(children: [
                    Text("19.999 \$" , style:Stayles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                    const Spacer(),
                   const BooksRating(),
                  ],)
              ],
                       ),
           )
        ],
      ),
    );
  }
}
