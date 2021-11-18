import 'package:first_flutter_app/screens/main_screen.dart';
import 'package:flutter/material.dart';

class ImageScreen extends StatefulWidget {
  static const String routeName = '/image-screen';
  const ImageScreen({Key? key}) : super(key: key);

  @override
  _ImageScreenState createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  var i = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    if (i == 0) {
      return Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/dobra_odpowiedź.png',
              height: size.height,
              width: size.width,
            ),
            Container(
              height: size.height,
              width: size.width,
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                color: Colors.transparent,
                margin: EdgeInsets.symmetric(vertical: 10),
                width: size.width * 0.3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: TextButton(
                    onPressed: () {
                      i += 1;
                      setState(() {});
                    },
                    style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 18, horizontal: 40),
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
            )
          ],
        ),
      );
    } else {
      return Scaffold(
        body: Stack(
          children: [
            Image.asset(
              'assets/zła_odpowiedź.png',
              height: size.height,
              width: size.width,
            ),
            Container(
              height: size.height,
              width: size.width,
              alignment: Alignment.center,
              child: Container(
                alignment: Alignment.center,
                color: Colors.transparent,
                margin: EdgeInsets.symmetric(vertical: 10),
                width: size.width * 0.3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
                  child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(MainScreen.routename);
                    },
                    style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: 18, horizontal: 40),
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
            )
          ],
        ),
      );
    }
  }
}
