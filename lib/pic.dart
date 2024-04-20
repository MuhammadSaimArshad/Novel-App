import 'package:flutter/material.dart';

class Pic extends StatefulWidget {
  const Pic({super.key});

  @override
  State<Pic> createState() => _PicState();
}

class _PicState extends State<Pic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  image:
                      DecorationImage(image: AssetImage("asset/appicon.png"))),
            )
          ],
        ),
      ),
    );
  }
}
