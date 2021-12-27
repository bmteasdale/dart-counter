import 'package:dart_score_counter/controllers/ScoreController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TwoPlayerScore extends StatelessWidget {
  const TwoPlayerScore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GameScore _scoreController = Get.find();

    return Obx(
      () => Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Player 1:',
                style: TextStyle(
                    color: Color(0xFF656565),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _scoreController.getPlayerScore(1).toString(),
                    style:
                        TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 40.0),
                  Opacity(
                    opacity: _scoreController.getCurrentPlayer().value == 1
                        ? 1.0
                        : 0.0,
                    child: Container(
                      height: 16.0,
                      width: 16.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFEB3E3E)),
                    ),
                  )
                ],
              ),
              Text(
                'Player 2:',
                style: TextStyle(
                    color: Color(0xFF656565),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _scoreController.getPlayerScore(2).toString(),
                    style:
                        TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 40.0),
                  Opacity(
                    opacity: _scoreController.getCurrentPlayer().value == 2
                        ? 1.0
                        : 0.0,
                    child: Container(
                      height: 16.0,
                      width: 16.0,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFEB3E3E)),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
