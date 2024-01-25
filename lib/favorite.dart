import 'package:design_netflix/anasayfa.dart';
import 'package:design_netflix/discover.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  int secilenIndeks = 0;
  var sayfalar = [const Anasayfa(), const Favorite(), const Discover()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(backgroundColor: Colors.black,
        title: Text(
          "Favorite",
          style: TextStyle(color: Colors.white),
        ),
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          constraints: BoxConstraints.tight(
            const Size(150, 200),
          ),
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.asset(
              "resimler/prison-break.jpg",
              fit: BoxFit.cover,
            ),
          ),
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