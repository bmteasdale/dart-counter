import 'package:dart_score_counter/views/screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:dart_score_counter/controllers/SetupController.dart';

class GameScore extends GetxController {
  var _currentScore = 0.obs;
  var _playerOneScore = 501.obs;
  var _playerTwoScore = 501.obs;
  var _currentPlayer = 1.obs;
  SetupController _setupController = Get.find();

  @override
  void onInit() {
    super.onInit();
  }

  void initializeGameScore(int points) {
    _playerOneScore(points);
    _playerTwoScore(points);
    _currentPlayer(1);
  }

  RxInt getPlayerScore(int player) {
    return (player == 1 ? _playerOneScore : _playerTwoScore);
  }

  void setPlayerScore() {
    if (_currentPlayer.value == 1) {
      if ((_playerOneScore.value - _currentScore.value) >= 0) {
        _playerOneScore.value -= _currentScore.value;
      } else {
        Get.snackbar('BUST', 'Score will not change...');
      }
    }
    if (_currentPlayer.value == 2) {
      if ((_playerTwoScore.value - _currentScore.value) >= 0) {
        _playerTwoScore.value -= _currentScore.value;
      } else {
        Get.snackbar('BUST', 'Score will not change...');
      }
    }
    _currentScore(0);
    if (_playerOneScore.value <= 0 || _playerTwoScore.value <= 0) {
      var winner;
      if (_playerOneScore.value == 0) winner = 'Player 1';
      if (_playerTwoScore.value == 0) winner = 'Player 2';
      Get.offAll(HomeScreen());
      Get.snackbar('Game Over', winner + ' is the winner!',
          duration: Duration(seconds: 5));
    }
  }

  void setCurrentScore(int score) {
    _currentScore += score;
  }

  void resetCurrentScore() {
    _currentScore(0);
  }

  RxInt getCurrentScore() {
    return _currentScore;
  }

  RxInt getCurrentPlayer() {
    return _currentPlayer;
  }

  void togglePlayer() {
    if (_setupController.getNumPlayers() > 1) {
      if (_currentPlayer.value == 1) {
        _currentPlayer(2);
      } else {
        _currentPlayer(1);
      }
    } else {
      _currentPlayer(1);
    }
  }
}
