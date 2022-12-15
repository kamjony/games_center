import 'package:equatable/equatable.dart';

class GameDetailsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetGameDetails extends GameDetailsEvent {
  final int gameId;
  final String gameName;

  GetGameDetails({required this.gameId, required this.gameName});

  @override
  List<Object?> get props => [gameId, gameName];
}

class ShowMoreGameDescription extends GameDetailsEvent {
  final bool showMore;

  ShowMoreGameDescription( {required this.showMore});

  @override
  List<Object?> get props => [showMore];

}