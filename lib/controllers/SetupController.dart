import 'package:get/get.dart';

class SetupController extends GetxController {
  // State Variables
  var _totalScore = 0.obs;
  var _numPlayers = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  void setGameSettings(int score, int players) {
    _totalScore.value = score;
    _numPlayers.value = players;
  }

  int getTotalScore() {
    return _totalScore.value;
  }

  int getNumPlayers() {
    return _numPlayers.value;
  }
}
