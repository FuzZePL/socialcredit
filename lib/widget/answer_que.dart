import 'package:flutter/material.dart';

class AnswerQue extends StatelessWidget {
  final VoidCallback onTap;
  final String answer;
  const AnswerQue({
    Key? key,
    required this.onTap,
    required this.answer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.only(
          top: 8,
          bottom: 8,
          left: 16,
          right: 16,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: Colors.black,
          ),
        ),
        child: Text(
          answer,
          style: TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
