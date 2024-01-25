import 'package:design_netflix/categories.dart';
import 'package:design_netflix/discover.dart';
import 'package:design_netflix/favorite.dart';
import 'package:design_netflix/my_list.dart';
import 'package:design_netflix/profile.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  final PageController _pageController = PageController();
  bool standardSelected = false;
  bool filledSelected = false;
  bool tonalSelected = false;
  bool outlinedSelected = false;
  int secilenIndeks = 0;
  var sayfalar = [const Discover(), const Favorite(), const Profile()];


  @override
  Widget build(BuildContext context) {
    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
        title: const Text(
          'MOVIES',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: "BebasNeue",
            fontSize: 25,
            color: Colors.red,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: PageView(
                controller: _pageController,
                children: [
                  _buildImageContainer("resimler/avengers.jpg"),
                  _buildImageContainer("resimler/prison-break.jpg"),
                  _buildImageContainer("resimler/stranger-things.jpg"),
                ],
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,bottom: 16.0, top: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Discover()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.all(20.0),
                    ),
                    child: Text(
                      'DISCOVER',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "Anton-Regular",
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,bottom: 16.0, top: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Categories()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.all(20.0),
                    ),
                    child: Text(
                      'CATEGORIES',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "Anton-Regular",
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,bottom: 16.0, top: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MyList()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      padding: EdgeInsets.all(20.0),
                    ),
                    child: Text(
                      'MY LIST',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "Anton-Regular",
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16.0,bottom: 16.0, top: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(20.0),
                      backgroundColor: Colors.red,
                    ),
                    child: Text(
                      'PROFILE',
                      style: TextStyle(
                        //fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontFamily: "Anton-Regular",
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(left: 16.0,top: 16.0),
              child: Text(
                "My List",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                  fontFamily: "LibreBaskerville-Bold",
                ),
              ),
            ),
            alignment: Alignment.bottomLeft,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            constraints: BoxConstraints.tight(
                              const Size(150, 200),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                "resimler/stranger-things.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              isSelected: standardSelected,
                              icon: const Icon(Icons.favorite),
                              selectedIcon: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                setState(() {
                                  standardSelected = !standardSelected;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            constraints: BoxConstraints.tight(
                              const Size(150, 200),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                "resimler/prison-break.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              isSelected: tonalSelected,
                              icon: const Icon(Icons.favorite),
                              selectedIcon: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                setState(() {
                                  tonalSelected = !tonalSelected;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            constraints: BoxConstraints.tight(
                              const Size(150, 200),
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.asset(
                                "resimler/avengers.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: IconButton(
                              isSelected: filledSelected,
                              icon: const Icon(Icons.favorite),
                              selectedIcon: Icon(
                                Icons.favorite,
                                color: Colors.red,
                              ),
                              onPressed: () {
                                setState(() {
                                  filledSelected = !filledSelected;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined), label: "Discover"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
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
                  context, MaterialPageRoute(builder: (context) => Discover()));
              break;
            case 1:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Favorite()));
              break;
            case 2:
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Profile()));
              break;
          }
        },
      ),
    );
  }
}


Widget _buildImageContainer(String imagePath) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            spreadRadius: 5,
            blurRadius: 5,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}