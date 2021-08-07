import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Music Player',
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: MyAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderSection(),
            PlayListSection(),
          ],
        ),
      ),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(60);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white.withOpacity(0),
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        onPressed: null,
      ),
      actions: [
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          onPressed: null,
        ),
      ],
    );
  }
}

class HeaderSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
          color: Colors.red,
          image: DecorationImage(
            image: AssetImage('assets/billieeilish.jpeg'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50.0))),
      child: Stack(
        children: [
          Positioned(
              left: 20,
              bottom: 30.0,
              child: Text(
                'Billie Eilish',
                style: TextStyle(
                    color: Colors.white, fontSize: 43, fontFamily: 'Arizonia'),
              ))
        ],
      ),
    );
  }
}

class PlayListSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      color: Colors.white,
    );
  }
}
