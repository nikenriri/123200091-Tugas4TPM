import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugas4/guide.dart';
import 'package:tugas4/profile.dart';
import 'package:tugas4/stopwatch.dart';
import 'package:tugas4/situs.dart';
import 'package:tugas4/favorite.dart';
import 'package:tugas4/triangle.dart';
import 'package:tugas4/prima.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  PageController pageController=PageController();
  List<Widget>pages=[const LandingPage(), GuidePage()];

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
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.blue.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              minWidth: 200,
              height: 42,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfilePage(),
                  ),
                );
              },
              color: Colors.blue.shade200,
              child: const Text('Daftar Anggota',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            MaterialButton(
              minWidth: 200,
              height: 42,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrimeNumbersPage(),
                  ),
                );
              },
              color: Colors.blue.shade200,
              child: const Text('Bilangan Prima',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            MaterialButton(
              minWidth: 200,
              height: 42,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TriangleCalculatorPage(),
                  ),
                );
              },
              color: Colors.blue.shade200,
              child: const Text('Luas & Keliling Segitiga',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            MaterialButton(
              minWidth: 200,
              height: 42,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SitusPage(),
                  ),
                );
              },
              color: Colors.blue.shade200,
              child: const Text('Situs Rekomendasi',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
            MaterialButton(
              minWidth: 200,
              height: 42,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FavoritePage(),
                  ),
                );
              },
              color: Colors.blue.shade200,
              child: const Text('Favorite',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
            ),
          ],
        ),
      ),
    );
  }
}


