// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:novelive/widgets/categorieswidget.dart';
import 'package:novelive/widgets/selectiononewidget.dart';
import 'package:novelive/widgets/selectiontwowidget.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 15),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                padding: const EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      height: 50,
                      width: 300,
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search here...",
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.search,
                      size: 27,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: const Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
              ),

              // Widget Categories
              CategoriesWidget(),

              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: const Text(
                  'Best Light Novel',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
              ),

              // Item Widget
              SelectionOneWidget(),

              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: const Text(
                  'Isekai',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
              ),

              // Item Widget
              SelectionTwoWidget(),
            ],
          ),
        )
      ],
    ),
    );
  }
}