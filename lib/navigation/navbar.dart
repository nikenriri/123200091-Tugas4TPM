import 'package:flutter/material.dart';
import 'package:tugas4/stopwatch.dart';
import 'package:tugas4/landing.dart';
import 'package:tugas4/login.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController pageController=PageController();
  List<Widget>pages=[const LandingPage(), StopwatchPage(), LoginPage()];

  int selectedIndex = 0;
  void onPageChanged(int index){
    setState(() {
      selectedIndex=index;
    });
  }

  void onItemTapped(int selectedItems) {
    pageController.jumpToPage(selectedItems);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pageController,
        children: pages,
        onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_rounded,
              color: selectedIndex == 0 ? Colors.blue.shade200 : Colors.grey,
            ),
            label: "Home", // Menggunakan label untuk menambahkan teks
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.watch_later,
              color: selectedIndex == 1 ? Colors.blue.shade200 : Colors.grey,
            ),
            label: "Stopwatch", // Menggunakan label untuk menambahkan teks
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.logout_rounded,
              color: selectedIndex == 2 ? Colors.blue.shade200 : Colors.grey,
            ),
            label: "Log out", // Menggunakan label untuk menambahkan teks
          ),
        ],
      ),
    );
  }
}