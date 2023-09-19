import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> profileImages = [
    'images/Dot-NET.gif',
    'images/3D modeling.gif',
    'images/Arduino.gif',
    'images/Artificial Intelligence.webp',
    'images/Augmented Reality.jpg',
    // 'images/Back End Development.jpg',
    'images/Blockchain.jpeg',
    'images/Blynk IoT.jpg',
    'images/CBIR (Content-Based Image Retrieval).jpeg',
    'images/Cloud.jpg',
    'images/Data analysis.jpg',
    'images/Desktop Application.jpeg',
    'images/Digital Twinning.jpg',
    'images/Embedded Systems.jpeg',
    'images/ESP32.jpg',
    // 'images/Firebase.jpg',
    'images/Flutter.jpeg',
    'images/Flutter.jpg',
    // 'images/Front-End Development.jpg',
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
                  19,
                  (index) => Container(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 41,
                          backgroundImage:
                              const AssetImage('images/ig_story.png'),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(profileImages[index]),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Profile Name',
                          style: TextStyle(fontSize: 12, color: Colors.black87),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Divider(),
            //HERE
            Column(
              children: List.generate(
                15,
                (index) => Column(
                  children: [
                    //HEADER POST
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          child: CircleAvatar(
                            radius: 32,
                            backgroundImage: AssetImage(profileImages[index]),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
