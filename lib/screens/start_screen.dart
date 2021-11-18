import 'package:first_flutter_app/screens/image_screen.dart';
import 'package:first_flutter_app/screens/main_screen.dart';
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
          Image.asset(
            'assets/witaj.png',
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
                /* Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Text(
                    'Witaj na teście na Ósemkowy social credit',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      color: Colors.white,
                    ),
                  ),
                ), */
                SizedBox(
                  height: size.height * 0.4,
                ),
                Container(
                  color: Colors.transparent,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  width: size.width * 0.3,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(29),
                    child: TextButton(
                      onPressed: () {
                        Navigator.of(context).pushNamed(ImageScreen.routeName);
                      },
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
