// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SelectionOneWidget extends StatelessWidget {
  const SelectionOneWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 0; i < 10; i++)
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "itemPage");
              },
              child: Container(
                width: 165.88,
                height: 267.37,
                margin: const EdgeInsets.symmetric(horizontal: 10),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/${i + 1}.jpg'),
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(20)),
              ),
            )
        ],
      ),
    );
  }
}