import 'package:game_parking/game_parking.dart';

void initGameData(GameRepo gameRepo) {
  var gameModels = gameRepo.getDomainModels(GameRepo.gameDomainCode);

  var gameParkingEntries =
      gameModels.getModelEntries(GameRepo.gameParkingModelCode);
  initGameParking(gameParkingEntries);
}

void main() {
  var gameRepo = new GameRepo();
  initGameData(gameRepo);

  print(gameRepo.code);
  //
  // // Get a reference to the canvas.
  // CanvasElement canvas = document.querySelector("#canvas");
  // new Board(canvas, gameRepo);
}
