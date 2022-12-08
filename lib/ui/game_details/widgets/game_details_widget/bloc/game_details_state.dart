import 'package:equatable/equatable.dart';
import 'package:games_center/repository/models/game_details_model.dart';

enum GameDetailsStatus { initial, success, error, loading }

extension GameDetailsStatusX on GameDetailsStatus {
  bool get isInitial => this == GameDetailsStatus.initial;

  bool get isSuccess => this == GameDetailsStatus.success;

  bool get isError => this == GameDetailsStatus.error;

  bool get isLoading => this == GameDetailsStatus.loading;
}

class GameDetailsState extends Equatable {
  final GameDetailsModel gameDetails;
  final GameDetailsStatus status;
  final String gameName;

  const GameDetailsState({
    this.status = GameDetailsStatus.initial,
    GameDetailsModel? gameDetails,
    String? gameName
  })
      : gameDetails = gameDetails ?? const GameDetailsModel(),
        gameName = gameName ?? '';

  @override
  List<Object?> get props => [status, gameDetails, gameName];

  GameDetailsState copyWith({
    GameDetailsModel? gameDetails,
    GameDetailsStatus? status,
    String? gameName
  }) {
    return GameDetailsState(
      gameDetails: gameDetails ?? this.gameDetails,
      status: status ?? this.status,
      gameName: gameName ?? this.gameName,
    );
  }
}
