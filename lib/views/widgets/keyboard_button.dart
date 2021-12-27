import 'package:flutter/material.dart';
import 'package:dart_score_counter/controllers/ScoreController.dart';
import 'package:get/get.dart';

class KeyboardButton extends StatelessWidget {
  const KeyboardButton(
      {Key? key,
      required this.flex,
      required this.value,
      required this.contents})
      : super(key: key);
  final int flex;
  final int value;
  final Widget contents;

  @override
  Widget build(BuildContext context) {
    GameScore _scoreController = Get.find();

    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Material(
          color: Color(0xFFEB3E3E),
          child: InkWell(
            onTap: () {
              _scoreController.setCurrentScore(this.value);
            },
            child: Container(
              height: 56.0,
              child: Center(child: contents),
            ),
          ),
        ),
      ),
    );
  }
}
