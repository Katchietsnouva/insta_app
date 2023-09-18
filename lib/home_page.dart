import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
'images/ig_logo.png',
'images/ig_name.png',
'images/.NET.gif',
'images/3D modeling.gif',
'images/Arduino.gif',
'images/Artificial Intelligence.webp',
'images/Augmented Reality.jpg',
'images/Back-End Development.jpeg',
'images/Blockchain.jpeg',
'images/Blynk IoT.jpg',
'images/CBIR (Content-Based Image Retrieval).jpeg',
'images/Cloud.jpg',
'images/Data analysis.jpg',
'images/Desktop Application.jpeg',
'images/Digital Twinning.jpg',
'images/Embedded Systems.jpeg',
'images/ESP32.jpg',
'images/Firebase.jpg',
'images/Flutter.jpeg',
'images/Flutter.jpg',
'images/Front-End Development.jpg',
'images/Full Stack Development.jpeg',
'images/Game Development.jpeg',
'images/Hockey.jpg',
  ];
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            //STORY
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  8,
                  (index) => Container(
                    padding: EdgeInsets.all(10),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(profileImages[index]),
                    ),
                    
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
