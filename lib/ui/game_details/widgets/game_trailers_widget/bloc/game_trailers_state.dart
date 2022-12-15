import 'package:equatable/equatable.dart';
import 'package:games_center/repository/models/game_trailers_model.dart';

enum GameTrailersStatus { initial, success, error, loading }

extension GameTrailersStatusX on GameTrailersStatus {
  bool get isInitial => this == GameTrailersStatus.initial;

  bool get isSuccess => this == GameTrailersStatus.success;

  bool get isError => this == GameTrailersStatus.error;

  bool get isLoading => this == GameTrailersStatus.loading;
}

class GameTrailersState extends Equatable {
  final List<TrailerResult> trailers;
  final GameTrailersStatus status;

  const GameTrailersState({
    List<TrailerResult>? trailers,
    this.status = GameTrailersStatus.initial
  }) : trailers = trailers ?? const [];

  @override
  List<Object?> get props => [status, trailers];

  GameTrailersState copyWith({
    List<TrailerResult>? trailers, GameTrailersStatus? status
  }) {
    return GameTrailersState(
        trailers: trailers ?? this.trailers,
        status: status ?? this.status
    );
  }
}