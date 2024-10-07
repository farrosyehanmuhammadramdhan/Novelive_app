// ignore_for_file: depend_on_referenced_packages

import 'package:clippy_flutter/clippy_flutter.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:novelive/widgets/itemappbar.dart';
import 'package:novelive/widgets/itembottomnavbar.dart';


// ignore: must_be_immutable
class ItemsPage extends StatelessWidget {
  ItemsPage({super.key});

  List<String> myGenre = ['Dark fantasy', 'Isekai'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          const ItemAppBar(),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Image.asset(
              'images/1.jpg',
              height: 300,
            ),
          ),
          Arc(
              edge: Edge.TOP,
              arcType: ArcType.CONVEY,
              height: 30,
              child: Container(
                width: double.infinity,
                color: Colors.white30,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 45, bottom: 15),
                        child: Row(
                          children: [
                            Text(
                              'Failure Frame',
                              style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            RatingBar.builder(
                              initialRating: 0,
                              minRating: 0,
                              direction: Axis.horizontal,
                              itemCount: 5,
                              itemSize: 30,
                              itemPadding: const EdgeInsets.symmetric(horizontal: 3),
                              itemBuilder: (context, index) => const Icon(
                                Icons.star,
                                color: Colors.yellow,
                              ),
                              onRatingUpdate: (index) {},
                            )
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                          'Touka Mimori and his classmates are suddenly summoned to a fantasy world by a goddess to act as heroes. While most of them are shown to have exceptional skills, Mimori has an E-rank. Deeming him to be useless, the goddess decides to banish Mimori to a dungeon where nobody has ever survived. However, it turns out that his skills are more abnormal than it seems. As such, he vows to have his revenge.',
                          style: TextStyle(fontSize: 17, color: Colors.blue),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            Text(
                              'Volume',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '12',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Row(
                          children: [
                            const Text(
                              'Genre',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(width: 5),
                            Row(
                              children: [
                                for (int i = 0; i < myGenre.length; i++)
                                  Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 10),
                                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Text(
                                      myGenre[i],
                                      style: const TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.blue
                                      ),
                                    ),
                                  )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
      bottomNavigationBar: const ItemBottomNavbar(),
    );
  }
}
