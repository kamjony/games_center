import 'package:equatable/equatable.dart';

class GameTrailersEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class GetGameTrailersById extends GameTrailersEvent {
  final int gameId;

  GetGameTrailersById({required this.gameId});

  @override
  // TODO: implement props
  List<Object?> get props => [gameId];


}