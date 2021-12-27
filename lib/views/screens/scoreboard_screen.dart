import 'package:dart_score_counter/controllers/SetupController.dart';
import 'package:dart_score_counter/views/widgets/one_player_score.dart';
import 'package:dart_score_counter/views/widgets/scoreboard_keyboard.dart';
import 'package:dart_score_counter/views/widgets/two_player_score.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Scoreboard extends StatefulWidget {
  const Scoreboard({Key? key}) : super(key: key);

  @override
  _ScoreboardState createState() => _ScoreboardState();
}

class _ScoreboardState extends State<Scoreboard> {
  SetupController _setupController = Get.find();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _setupController.getNumPlayers() == 1
                ? OnePlayerScore()
                : TwoPlayerScore(),
            Keyboard(),
          ],
        ),
      )),
    );
  }
}
