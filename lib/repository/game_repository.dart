import 'package:games_center/repository/models/games_list_model.dart';
import 'package:games_center/repository/service/game_service.dart';

class GameRepository {
  final GameService service;

  const GameRepository({required this.service});

  Future<GamesListModel?> getGames() async => service.getGames();

  Future<List<Genre>?> getGenres() async => service.getGenres();

  Future<List<Result>?> getGamesByCategory(int genreId) async =>
      service.getGamesByCategory(genreId);
}
