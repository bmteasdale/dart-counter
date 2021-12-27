import 'package:dart_score_counter/controllers/ScoreController.dart';
import 'package:dart_score_counter/views/screens/scoreboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dart_score_counter/controllers/SetupController.dart';
import 'package:dart_score_counter/views/screens/rules_screen.dart';

class GameSetup extends StatefulWidget {
  const GameSetup({Key? key}) : super(key: key);

  @override
  _GameSetupState createState() => _GameSetupState();
}

class _GameSetupState extends State<GameSetup> {
  var _totalScoreDropdownValue = 501;
  var _numPlayersDropdownValue = 2;

  @override
  Widget build(BuildContext context) {
    SetupController _setupController = Get.find();
    GameScore _scoreController = Get.find();

    return Scaffold(
        body: SafeArea(
            child: ListView(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 24.0),
            Text('Game Setup',
                style: TextStyle(
                    color: Color(0xFF656565),
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 24.0),
            Text(
              'Score:',
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 100.0,
              width: 125.0,
              padding: EdgeInsets.only(left: 26.0),
              child: DropdownButton(
                  isExpanded: true,
                  itemHeight: 88.0,
                  value: _totalScoreDropdownValue,
                  items: [
                    DropdownMenuItem(
                      child: Text("301", style: TextStyle(fontSize: 40.0)),
                      value: 301,
                    ),
                    DropdownMenuItem(
                      child: Text("501", style: TextStyle(fontSize: 40.0)),
                      value: 501,
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _totalScoreDropdownValue = value as int;
                    });
                  }),
            ),
            SizedBox(height: 24.0),
            Text(
              'Players:',
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Container(
              height: 100.0,
              width: 125.0,
              padding: EdgeInsets.only(left: 26.0),
              child: DropdownButton(
                  isExpanded: true,
                  itemHeight: 88.0,
                  value: _numPlayersDropdownValue,
                  items: [
                    DropdownMenuItem(
                      child: Text("1", style: TextStyle(fontSize: 40.0)),
                      value: 1,
                    ),
                    DropdownMenuItem(
                      child: Text("2", style: TextStyle(fontSize: 40.0)),
                      value: 2,
                    ),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _numPlayersDropdownValue = value as int;
                    });
                  }),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: () => {Get.to(Rules())},
                  child: Text('Rules', style: TextStyle(fontSize: 24.0)),
                  color: Color(0xFFFFFFFF),
                  padding: EdgeInsets.only(
                      left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
                  textColor: Color(0xFFEB3E3E),
                ),
                SizedBox(width: 24.0),
                MaterialButton(
                  onPressed: () => {
                    _setupController.setGameSettings(
                        _totalScoreDropdownValue, _numPlayersDropdownValue),
                    _scoreController
                        .initializeGameScore(_totalScoreDropdownValue),
                    Get.off(Scoreboard()),
                  },
                  child: Text('START', style: TextStyle(fontSize: 24.0)),
                  color: Color(0xFFEB3E3E),
                  padding: EdgeInsets.only(
                      left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
                  textColor: Colors.white,
                ),
              ],
            )
          ],
        ),
      ),
    ])));
  }
}
