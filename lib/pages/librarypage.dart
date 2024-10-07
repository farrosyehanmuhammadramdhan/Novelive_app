// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:novelive/widgets/libraryappbar.dart';
import 'package:novelive/widgets/libraryitemsamples.dart';


class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const LibraryAppBar(),
          Container(
            padding: const EdgeInsets.only(top: 2),
            child: Column(
              children: [
                LibraryItemSamples()],
            ),
          )
        ],
      ),
    );
  }
}
