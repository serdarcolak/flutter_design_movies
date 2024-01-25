import 'package:design_netflix/anasayfa.dart';
import 'package:design_netflix/discover.dart';
import 'package:design_netflix/favorite.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int secilenIndeks = 0;
  var sayfalar = [const Anasayfa(), const Favorite(), const Discover()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Categories",style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Anasayfa()));
          },
        ),
      ),
      body: Center(
        child: Text(
          "Sayfa Geçişi",
          style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home Page"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined), label: "Discover"),
        ],
        currentIndex: secilenIndeks,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        onTap: (indeks) {
          sayfalar[secilenIndeks];

          secilenIndeks = indeks;
          print(indeks);
          switch (indeks) {
            case 0:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Anasayfa()));
              break;
            case 1:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Favorite()));
              break;
            case 2:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Discover()));
              break;
          }
        },
      ),
    );
  }
}