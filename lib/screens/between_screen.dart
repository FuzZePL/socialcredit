import 'package:first_flutter_app/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class BetweenScreen extends StatelessWidget {
  final int points;
  final int pointsForAnswer;
  final i;
  const BetweenScreen({
    Key? key,
    required this.points,
    required this.i,
    required this.pointsForAnswer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var rng = Random().nextInt(2) + 1;
    var rng2 = Random().nextInt(3) + 1;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          if (pointsForAnswer == -20 && rng == 1)
            Image.asset(
              'assets/-20_1.jpg',
              height: size.height,
              width: size.width,
            ),
          if (pointsForAnswer == -20 && rng == 2)
            Image.asset(
              'assets/-20_2.jpg',
              height: size.height,
              width: size.width,
            ),
          if (pointsForAnswer == -40 && rng2 == 1)
            Image.asset(
              'assets/-40_1.png',
              height: size.height,
              width: size.width,
            ),
          if (pointsForAnswer == -40 && rng2 == 2)
            Image.asset(
              'assets/-40_2.jpg',
              height: size.height,
              width: size.width,
            ),
          if (pointsForAnswer == -40 && rng2 == 3)
            Image.asset(
              'assets/-40_3.jpg',
              height: size.height,
              width: size.width,
            ),
          if (pointsForAnswer == 20 && rng == 1)
            Image.asset(
              'assets/+20_1.jpg',
              height: size.height,
              width: size.width,
            ),
          if (pointsForAnswer == 40 && rng == 1)
            Image.asset(
              'assets/+40_1.jpg',
              height: size.height,
              width: size.width,
            ),
          if (pointsForAnswer == 40 && rng == 2)
            Image.asset(
              'assets/+40_2.png',
              height: size.height,
              width: size.width,
            ),
          Container(
            height: size.height,
            width: size.width,
            alignment: Alignment.center,
            child: Container(
              alignment: Alignment.bottomCenter,
              color: Colors.transparent,
              margin: EdgeInsets.symmetric(vertical: 10),
              width: size.width * 0.3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MainScreen(
                          i: i,
                          points: points,
                        ),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                    primary: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                  child: Text(
                    'Rozumiem',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 29,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
