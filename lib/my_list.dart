import 'package:design_netflix/anasayfa.dart';
import 'package:design_netflix/discover.dart';
import 'package:design_netflix/favorite.dart';
import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  int secilenIndeks = 0;
  var sayfalar = [const Anasayfa(), const Favorite(), const Discover()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My List"),
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_new, color: Colors.black,),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));

          },

        ),

      ),
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Anasayfa"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.map_outlined), label: "Discover"),
        ],
        currentIndex: secilenIndeks,
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.white,
        onTap: (indeks){
          sayfalar[secilenIndeks];

          secilenIndeks = indeks;
          print(indeks);
          switch (indeks) {
            case 0:
              Navigator.push(context, MaterialPageRoute(builder: (context) => Anasayfa()));
              break;
            case 1:
              Navigator.push(context, MaterialPageRoute(builder: (context) => Favorite()));
              break;
            case 2:
              Navigator.push(context, MaterialPageRoute(builder: (context) => Discover()));
              break;
          }

        },
      ),
    );
  }
}
