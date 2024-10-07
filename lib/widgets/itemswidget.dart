// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.70,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 0; i < 4; i++)
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "itemPage");
            },
            child: Container(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 8),
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('images/${i + 1}.jpg'),
                      fit: BoxFit.fill
                    ),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        margin: EdgeInsets.only(top: 10),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(
                          'New',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.only(top: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Icon(
                            Icons.book_outlined,
                            color: Colors.black,
                          ))
                    ],
                  ),
                ],
              ),
            ),
          )
      ],
    );
  }
}
