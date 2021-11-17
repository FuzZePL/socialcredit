import 'package:first_flutter_app/data/answer.dart';
import 'package:first_flutter_app/data/questions.dart';
import 'package:first_flutter_app/widget/answer_que.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var i = 0;
  var points = 0;
  List<Answer> qAndA = Question.questions;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final margin = size.height * 0.02;

    if (i < 4) {
      return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Container(
          height: size.height,
          width: size.width,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: 8,
                    bottom: 8,
                    left: 16,
                    right: 16,
                  ),
                  child: Text(
                    qAndA[i].question,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 34,
                    ),
                  ),
                ),
                SizedBox(
                  height: margin * 2,
                ),
                Image.asset(
                  'assets/avatar.png',
                  height: size.height * 0.2,
                  width: size.width * 0.2,
                ),
                SizedBox(
                  height: margin * 2.5,
                ),
                AnswerQue(
                  onTap: () {
                    points = points + qAndA[i].points[0];
                    i += 1;
                    setState(() {});
                  },
                  answer: qAndA[i].answers[0],
                ),
                SizedBox(
                  height: margin,
                ),
                AnswerQue(
                  onTap: () {
                    points = points + qAndA[i].points[1];
                    i += 1;
                    setState(() {});
                  },
                  answer: qAndA[i].answers[1],
                ),
                SizedBox(
                  height: margin,
                ),
                AnswerQue(
                  onTap: () {
                    points = points + qAndA[i].points[2];
                    i += 1;
                    setState(() {});
                  },
                  answer: qAndA[i].answers[2],
                ),
                SizedBox(
                  height: margin,
                ),
                AnswerQue(
                  onTap: () {
                    points = points + qAndA[i].points[3];
                    i += 1;
                    setState(() {});
                  },
                  answer: qAndA[i].answers[3],
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Container(
          height: size.height,
          width: size.width,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/avatar.png',
                height: size.height * 0.5,
                width: size.width * 0.5,
              ),
              SizedBox(
                height: margin,
              ),
              Text(
                'Grotulacje zdobyłeś całe: ',
                style: TextStyle(
                  fontSize: 32,
                ),
              ),
              Text(
                '${points.toString()} punktów',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 34,
                ),
              ),
            ],
          ),
        ),
      );
    }
  }
}
