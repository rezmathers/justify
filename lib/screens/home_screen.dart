import 'package:flutter/material.dart';
import 'package:anim_search_app_bar/anim_search_app_bar.dart';
import 'package:justi5/screens/home_view_screens/homeview.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (i) => setState(
          () => _currentIndex = i,
        ),
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home),
            title: const Text("Home"),
            selectedColor: Colors.green,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.mail),
            title: const Text('Mail'),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.search),
            title: const Text("Search"),
            selectedColor: Colors.green,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.padding_rounded),
            title: const Text("Orders"),
            selectedColor: Colors.green,
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.person),
            title: const Text("Profile"),
            selectedColor: Colors.green,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AnimSearchAppBar(
              appBar: AppBar(
                backgroundColor: Colors.grey[300],
              ),
              backgroundColor: Colors.grey[300],
              iconColor: Colors.green,
              cancelButtonText: "Cancel",
              hintText: 'Search',
              cancelButtonTextStyle: const TextStyle(color: Colors.green),
            ),
            const SingleChildScrollView(
              child: HomeView(),
            ),
          ],
        ),
      ),
    );
  }
}
