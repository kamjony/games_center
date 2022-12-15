import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_center/repository/game_repository.dart';
import 'package:games_center/ui/game_details/widgets/game_trailers_widget/bloc/game_trailers_event.dart';
import 'package:games_center/ui/game_details/widgets/game_trailers_widget/bloc/game_trailers_state.dart';

class GameTrailersBloc extends Bloc<GameTrailersEvent, GameTrailersState> {
  final GameRepository gameRepository;

  GameTrailersBloc({
    required this.gameRepository,
  }) : super(const GameTrailersState()) {
    on<GetGameTrailersById>(_mapGetGameTrailersEventToState);
  }

  void _mapGetGameTrailersEventToState(
      GetGameTrailersById event, Emitter<GameTrailersState> emit) async {
    try {
      emit(state.copyWith(status: GameTrailersStatus.loading));
      final gameTrailers = await gameRepository.getGameTrailers(event.gameId);
      emit(state.copyWith(status: GameTrailersStatus.success, trailers: gameTrailers));
    } catch (e) {
      emit(state.copyWith(status: GameTrailersStatus.error));
    }
  }
}
