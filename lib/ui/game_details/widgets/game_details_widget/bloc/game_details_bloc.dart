import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_center/repository/game_repository.dart';
import 'package:games_center/ui/game_details/widgets/game_details_widget/bloc/game_details_event.dart';
import 'package:games_center/ui/game_details/widgets/game_details_widget/bloc/game_details_state.dart';

class GameDetailsBloc extends Bloc<GameDetailsEvent, GameDetailsState> {
  final GameRepository gameRepository;

  GameDetailsBloc({
    required this.gameRepository,
  }) : super(const GameDetailsState()) {
    on<GetGameDetails>(_mapGetGameDetailsEventToState);
  }


  void _mapGetGameDetailsEventToState(GetGameDetails event, Emitter<GameDetailsState> emit) async {
    try {
      emit(state.copyWith(status: GameDetailsStatus.loading));
      final gameDetails = await gameRepository.getGameDetails(event.gameId);
      emit(state.copyWith(
        status: GameDetailsStatus.success,
        gameDetails: gameDetails,
        gameName: event.gameName,
      ));
    } catch (e) {
      emit(state.copyWith(status: GameDetailsStatus.error));
    }
  }
}
