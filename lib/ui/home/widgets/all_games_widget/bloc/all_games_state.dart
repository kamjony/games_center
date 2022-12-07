import 'package:equatable/equatable.dart';
import 'package:games_center/repository/models/games_list_model.dart';

enum AllGamesStatus { initial, success, error, loading }

extension AllGamesStatusX on AllGamesStatus {
  bool get isInitial => this == AllGamesStatus.initial;

  bool get isSuccess => this == AllGamesStatus.success;

  bool get isError => this == AllGamesStatus.error;

  bool get isLoading => this == AllGamesStatus.loading;
}

class AllGamesState extends Equatable {
  final GamesListModel gamesList;
  final AllGamesStatus status;

  const AllGamesState({
    this.status = AllGamesStatus.initial,
    GamesListModel? gamesList,
  }) : gamesList = gamesList ?? const GamesListModel();

  @override
  List<Object?> get props => [status, gamesList];

  AllGamesState copyWith({
    GamesListModel? gamesList,
    AllGamesStatus? status,
  }) {
    return AllGamesState(gamesList: gamesList ?? this.gamesList, status: status ?? this.status);
  }
}
