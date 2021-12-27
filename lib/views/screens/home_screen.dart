import 'package:get/get.dart';
import 'package:dart_score_counter/views/screens/setup_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 64.0),
              Text('Welcome To',
                  style: TextStyle(
                      color: Color(0xFF656565),
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 16.0),
              Text('Dart Counter',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 56.0,
                      fontWeight: FontWeight.bold)),
              SizedBox(height: 24.0),
              MaterialButton(
                onPressed: () => {Get.to(GameSetup())},
                child: Text('New Set', style: TextStyle(fontSize: 24.0)),
                color: Color(0xFFEB3E3E),
                padding: EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 10.0, bottom: 10.0),
                textColor: Colors.white,
              ),
              SizedBox(height: 24.0),
              Image.asset('assets/images/undraw-darts.png')
            ],
          ),
        ),
      ),
    );
  }
}
