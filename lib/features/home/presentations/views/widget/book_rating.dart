import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
class BooksRating extends StatelessWidget {
  const BooksRating({super.key});

  @override
  Widget build(BuildContext context) {
    return    Row(children: [
    const Icon(Icons.star, color:  Colors.yellow,),
    const SizedBox(width: 6,),
    const Text("4.8", style: Stayles.textStyle16,),
     const SizedBox(width: 6,), 
    Text("(555)", style: Stayles.textStyle14.copyWith(color: const Color(0xff707070)),),
    ],);
  }
}

class FontAwesomeIcons {
}