import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:instagram_clone/homepage.dart';
import 'package:instagram_clone/post.dart';
import 'package:instagram_clone/story.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Instagram Clone",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _pages = [
    MainPage(),
    MainPage(),
    MainPage(),
    MainPage(),
    MainPage(),
  ];

  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEEEE),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(0xFFEEEEEE),
        centerTitle: true,
        title: Text(
          "Instagram",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            SimpleLineIcons.camera,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Feather.tv,
                color: Colors.black,
              ),
              onPressed: () {}),
          IconButton(
              icon: Icon(
                FontAwesome.send_o,
                color: Colors.black,
              ),
              onPressed: () {}),
        ],
      ),
      body: _pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        currentIndex: currentPage,
        onTap: (i) {
          setState(() {
            currentPage = i;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Foundation.home,
            ),
            title: Text("MainPage"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Feather.search,
            ),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Feather.plus_square,
            ),
            title: Text("Upload"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Feather.heart,
            ),
            title: Text("Liked"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Feather.user,
            ),
            title: Text("User"),
          ),
        ],
      ),
    );
  }
}
