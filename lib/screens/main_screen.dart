import 'package:first_flutter_app/data/answer.dart';
import 'package:first_flutter_app/data/questions.dart';
import 'package:first_flutter_app/screens/between_screen.dart';
import 'package:first_flutter_app/widget/answer_que.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  static const String routename = '/start-screen';
  final i;
  final points;
  const MainScreen({
    Key? key,
    required this.i,
    required this.points,
  }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Answer> qAndA = Question.questions;
  @override
  Widget build(BuildContext context) {
    var i = widget.i;
    var points = widget.points;
    final size = MediaQuery.of(context).size;
    final margin = size.height * 0.02;

    if (widget.i < 4) {
      return Scaffold(
        backgroundColor: Colors.grey[300],
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
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: size.width * 0.4,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: EdgeInsets.only(
                        top: 8,
                        bottom: 8,
                        left: 16,
                        right: 16,
                      ),
                      child: Text(
                        qAndA[i].question,
                        overflow: TextOverflow.clip,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 34,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: margin * 2,
                    ),
                    SizedBox(
                      height: size.height * 0.2,
                      width: size.width * 0.2,
                    ),
                    SizedBox(
                      height: margin * 2.5,
                    ),
                    AnswerQue(
                      onTap: () {
                        points = points + qAndA[i].points[0];

                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BetweenScreen(
                              points: points,
                              i: i + 1,
                              pointsForAnswer: qAndA[i].points[0],
                            ),
                          ),
                        );
                      },
                      answer: qAndA[i].answers[0],
                    ),
                    SizedBox(
                      height: margin,
                    ),
                    AnswerQue(
                      onTap: () {
                        points = points + qAndA[i].points[1];
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BetweenScreen(
                              points: points,
                              i: i + 1,
                              pointsForAnswer: qAndA[i].points[1],
                            ),
                          ),
                        );
                      },
                      answer: qAndA[i].answers[1],
                    ),
                    SizedBox(
                      height: margin,
                    ),
                    AnswerQue(
                      onTap: () {
                        points = points + qAndA[i].points[2];

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BetweenScreen(
                              points: points,
                              i: i + 1,
                              pointsForAnswer: qAndA[i].points[2],
                            ),
                          ),
                        );
                      },
                      answer: qAndA[i].answers[2],
                    ),
                    SizedBox(
                      height: margin,
                    ),
                    AnswerQue(
                      onTap: () {
                        points = points + qAndA[i].points[3];

                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BetweenScreen(
                              points: points,
                              i: i + 1,
                              pointsForAnswer: qAndA[i].points[3],
                            ),
                          ),
                        );
                      },
                      answer: qAndA[i].answers[3],
                    ),
                  ],
                ),
              ),
            ),
          ],
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
