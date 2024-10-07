import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      padding: const EdgeInsets.all(25),
      child: Row(
        children: [
          const Icon(
            Icons.sort,
            size: 30,
            color: Colors.blue,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  'Nove',
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'live',
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          const Spacer(),
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(
              badgeColor: Colors.red,
              padding: EdgeInsets.all(7),
            ),
            badgeContent: const Text(
              '3',
              style: TextStyle(color: Colors.white),
            ),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "libraryPage");
              },
              child: const Icon(
                Icons.book,
                size: 32,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
    );
  }
}
