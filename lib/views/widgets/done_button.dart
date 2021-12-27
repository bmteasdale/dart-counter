import 'package:flutter/material.dart';
import 'package:dart_score_counter/controllers/ScoreController.dart';
import 'package:get/get.dart';

class DoneKey extends StatelessWidget {
  const DoneKey({Key? key, required this.flex, required this.contents})
      : super(key: key);

  final int flex;
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
              _scoreController.setPlayerScore();
              _scoreController.togglePlayer();
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
