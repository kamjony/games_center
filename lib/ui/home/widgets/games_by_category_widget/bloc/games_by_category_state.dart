import 'package:equatable/equatable.dart';
import 'package:games_center/repository/models/games_list_model.dart';

enum GamesByCategoryStatus { initial, success, error, loading }

extension GamesByCategoryStatusX on GamesByCategoryStatus {
  bool get isInitial => this == GamesByCategoryStatus.initial;

  bool get isSuccess => this == GamesByCategoryStatus.success;

  bool get isError => this == GamesByCategoryStatus.error;

  bool get isLoading => this == GamesByCategoryStatus.loading;
}

class GamesByCategoryState extends Equatable {
  final List<Result> games;
  final GamesByCategoryStatus status;
  final String categoryName;

  const GamesByCategoryState(
      {List<Result>? games, this.status = GamesByCategoryStatus.initial, String? categoryName})
      : games = games ?? const [],
        categoryName = categoryName ?? '';

  @override
  List<Object?> get props => [status, games, categoryName];

  GamesByCategoryState copyWith(
      {List<Result>? games, GamesByCategoryStatus? status, String? categoryName}) {
    return GamesByCategoryState(
        games: games ?? this.games,
        status: status ?? this.status,
        categoryName: categoryName ?? this.categoryName);
  }
}
