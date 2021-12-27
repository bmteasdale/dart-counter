import 'package:dart_score_counter/controllers/ScoreController.dart';
import 'package:dart_score_counter/controllers/SetupController.dart';
import 'package:flutter/material.dart';
import 'package:dart_score_counter/views/screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final SetupController setupController = Get.put(SetupController());
  final GameScore scoreController = Get.put(GameScore());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Dart Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: GoogleFonts.getFont('Chakra Petch').fontFamily,
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
