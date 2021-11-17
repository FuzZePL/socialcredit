import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/LO8_backgrouns.png',
            height: size.height,
            width: size.width,
          ),
          Container(
            height: size.height,
            width: size.width,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Witaj w teście na prawdziwego ósemkowicza',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.2,
                ),
                Container(
                  color: Colors.transparent,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: size.width * 0.3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(vertical: 18, horizontal: 40),
                        primary: Colors.white,
                        backgroundColor: Colors.black,
                      ),
                      child: Text(
                        'Rozpocznij test',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 29,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
