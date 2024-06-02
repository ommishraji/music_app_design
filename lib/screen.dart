import 'package:flutter/material.dart';

import 'animated_screen.dart';

class screen11 extends StatefulWidget {
  const screen11({super.key});

  @override
  State<screen1> createState() => _screen11State();
}
bool isSwitched = false;
class _screen11State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 200.0,
              child: Hero(
                  tag: 'topImage',
                  child: Image.asset(
                    'images/image1.png',
                    fit: BoxFit.cover,
                  )
              ),

          ),

        ],
      ),

    );
  }
}
