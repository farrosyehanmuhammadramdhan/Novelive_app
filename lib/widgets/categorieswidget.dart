import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesWidget extends StatelessWidget {
  CategoriesWidget({super.key});

  List<String> myTitleCategory = [
    'Isekai',
    'Fantasy',
    'Romance',
    'Action',
    'Slice of Life',
    'Comedy',
    'Mystery',
    'Sci-Fi',
    'Supernatural',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for(int i = 0; i < myTitleCategory.length; i++)
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Row(
              children: [
                Text(
                  myTitleCategory[i],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.blue
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
