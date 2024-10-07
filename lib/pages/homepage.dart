import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:novelive/pages/profilepage.dart';
import 'package:novelive/pages/searchpage.dart';
import 'package:novelive/widgets/categorieswidget.dart';
import 'package:novelive/widgets/homeappbar.dart';
import 'package:novelive/widgets/itemswidget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomepageContent(),
    const SearchPage(),
    const ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        height: 70,
        color: Colors.blue,
        items: const [
          Icon(
            Icons.home,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.search_outlined,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

class HomepageContent extends StatelessWidget {
  const HomepageContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const HomeAppBar(),
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
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.only(left: 5),
                          height: 50,
                          width: 280,
                          child: TextFormField(
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here...",
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.search,
                        size: 25,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                ),
              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                child: const Text(
                  'Categories',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),

              // Widget Categories
              CategoriesWidget(),

              Container(
                alignment: Alignment.centerLeft,
                margin:
                    const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
                child: const Text(
                  'Best Light Novel',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),

              // Item Widget
              const ItemsWidget()
            ],
          ),
        )
      ],
    );
  }
}
