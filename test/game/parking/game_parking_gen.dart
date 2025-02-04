// test/game/parking/game_parking_gen.dart

import "package:ednet_core/ednet_core.dart";

import "package:game_parking/game_parking.dart";

void genCode() {
  var repo = new CoreRepository();

  var gameDomain = new Domain("Game");

  fromJsonToModel(gameParkingModelJson, gameDomain, "Parking");

  repo.domains.add(gameDomain);

  repo.gen("game_parking");
}

void initGameData(GameRepo gameRepo) {
  var gameModels = gameRepo.getDomainModels(GameRepo.gameDomainCode);

  var gameParkingEntries =
      gameModels?.getModelEntries(GameRepo.gameParkingModelCode);
  initGameParking(gameParkingEntries);
  gameParkingEntries!.display();
  gameParkingEntries.displayJson();
}

void main() {
  genCode();

  var gameRepo = new GameRepo();
  initGameData(gameRepo);
}
