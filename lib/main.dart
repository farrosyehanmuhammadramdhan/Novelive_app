import 'package:flutter/material.dart';
import 'package:novelive/pages/homepage.dart';
import 'package:novelive/pages/itemspage.dart';
import 'package:novelive/pages/librarypage.dart';
import 'package:novelive/pages/profilepage.dart';
import 'package:novelive/pages/searchpage.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      routes: {
        "/": (context) => const HomePage(),
        "searchPage": (context) => const SearchPage(),
        "libraryPage": (context) => const LibraryPage(),
        "itemPage": (context) => ItemsPage(),
        "profilePage": (context) => const ProfilePage()
      },
    );
  }
}