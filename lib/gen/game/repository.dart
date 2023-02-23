part of game_parking; 
 
// lib/gen/game/repository.dart

class GameRepo extends Repository { 
  
  static final gameDomainCode = "Game"; 
  static final gameParkingModelCode = "Parking"; 
 
  GameRepo([String code="GameRepo"]) : super(code) { 
    _initGameDomain(); 
  } 
 
  void _initGameDomain() { 
    var gameDomain = new Domain(gameDomainCode); 
    domains.add(gameDomain); 
    add(new GameModels(gameDomain)); 
  } 
 
} 




