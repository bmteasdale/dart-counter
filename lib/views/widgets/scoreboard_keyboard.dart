import 'package:dart_score_counter/views/widgets/backspace_key.dart';
import 'package:dart_score_counter/views/widgets/done_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dart_score_counter/views/widgets/keyboard_button.dart';
import 'package:dart_score_counter/controllers/ScoreController.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GameScore _scoreController = Get.find();

    return Obx(
      () => Container(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  KeyboardButton(
                      flex: 4,
                      value: 0,
                      contents: Text(
                          _scoreController.getCurrentScore().toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  BackspaceKey(flex: 1, icon: Icons.backspace_outlined),
                ],
              ),
              Row(
                children: [
                  KeyboardButton(
                      flex: 1,
                      value: 1,
                      contents: Text('1',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 2,
                      contents: Text('2',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 3,
                      contents: Text('3',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 4,
                      contents: Text('4',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 5,
                      contents: Text('5',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                ],
              ),
              Row(
                children: [
                  KeyboardButton(
                      flex: 1,
                      value: 6,
                      contents: Text('6',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 7,
                      contents: Text('7',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 8,
                      contents: Text('8',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 9,
                      contents: Text('9',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 10,
                      contents: Text('10',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                ],
              ),
              Row(
                children: [
                  KeyboardButton(
                      flex: 1,
                      value: 11,
                      contents: Text('11',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 12,
                      contents: Text('12',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 13,
                      contents: Text('13',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 14,
                      contents: Text('14',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 15,
                      contents: Text('15',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                ],
              ),
              Row(
                children: [
                  KeyboardButton(
                      flex: 1,
                      value: 16,
                      contents: Text('16',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 17,
                      contents: Text('17',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 18,
                      contents: Text('18',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 19,
                      contents: Text('19',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  KeyboardButton(
                      flex: 1,
                      value: 20,
                      contents: Text('20',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                ],
              ),
              Row(
                children: [
                  KeyboardButton(
                      flex: 1,
                      value: 25,
                      contents: Text('25',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                  DoneKey(
                      flex: 4,
                      contents: Text('Done',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24.0))),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
