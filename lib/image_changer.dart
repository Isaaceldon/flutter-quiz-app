import 'dart:math';

import 'package:flutter/material.dart';

class ImageChanger extends StatefulWidget {
  const ImageChanger({super.key});

  @override
  State<ImageChanger> createState() {
    return _ImageChangerState();
  }
}

class _ImageChangerState extends State<ImageChanger> {
  var currentRandom = 1;
  void changeImage() {
    setState(() {
    currentRandom = Random().nextInt(4)+1;
    });
  }

  @override
  Widget build(constext) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 500,
            width: 500,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              border: Border.all(color: Colors.blue, width: 2),
              image: DecorationImage(
          image: AssetImage('assets/images/mission$currentRandom.jpeg'),
          fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
        TextButton(
            onPressed: changeImage,
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
              padding: const EdgeInsets.all(5),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Change Image"),
            ))
      ],
    );
  }
}
