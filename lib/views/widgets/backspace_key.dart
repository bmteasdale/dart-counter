import 'package:dart_score_counter/controllers/ScoreController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackspaceKey extends StatelessWidget {
  const BackspaceKey({
    Key? key,
    required this.flex,
    required this.icon,
  }) : super(key: key);

  final int flex;
  final IconData icon;

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
              _scoreController.resetCurrentScore();
            },
            child: Container(
              height: 56.0,
              child: Center(
                  child: Icon(
                icon,
                size: 24.0,
                color: Colors.white,
              )),
            ),
          ),
        ),
      ),
    );
  }
}
