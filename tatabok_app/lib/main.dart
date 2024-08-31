import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color.fromARGB(255, 96, 74, 192),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 73, 40, 156),
        title: const Text(
          "Tepical Photo",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _Myfunction1State();
}

class _Myfunction1State extends State<MyApp> {
  String emoo1 = " \u{1F44E}  ";

  String emoo2 = " \u{2639}  ";
  String emoo3 = " \u{1F483}  ";
  String emoo4 = " \u{1F973}  ";
  String emoo5 = " \u{1F974}  ";
  int change = 1;
  int change2 = 2;
  void changeImage() {
    change = Random().nextInt(8) + 1; //1 to 9
    change2 = Random().nextInt(8) + 1; //1 to 9
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          change == change2
              ? "Congratulation Man$emoo4"
              : "Lozzer Tray Again$emoo5",
          style: TextStyle(
            color: Colors.white,
            fontSize: 37,
          ),
        ),
        Row(children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeImage();
                });
              },
              child: Image(image: AssetImage('images/image-$change2.png')),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  changeImage();
                });
              },
              child: Image(image: AssetImage('images/image-$change.png')),
            ),
          ),
        ]),
      ],
    );
  }
}
