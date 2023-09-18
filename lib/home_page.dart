import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'images/ig_name.png',
          height: 50,
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.add_circle_outline),
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(Icons.favorite_border),
            onPressed: () {},
          ),
          IconButton(
              icon: Icon(Icons.chat_bubble_outline),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
