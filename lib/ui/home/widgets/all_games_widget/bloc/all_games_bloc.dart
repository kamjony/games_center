import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_center/repository/game_repository.dart';
import 'package:games_center/ui/home/widgets/all_games_widget/bloc/all_games_event.dart';
import 'package:games_center/ui/home/widgets/all_games_widget/bloc/all_games_state.dart';

class AllGamesBloc extends Bloc<AllGamesEvent, AllGamesState> {
  final GameRepository gameRepository;

  AllGamesBloc({
    required this.gameRepository,
  }) : super(const AllGamesState()) {
    on<GetGames>(_mapGetGamesEventToState);
  }

  void _mapGetGamesEventToState(GetGames event, Emitter<AllGamesState> emit) async {
    try {
      emit(state.copyWith(status: AllGamesStatus.loading));
      final gamesList = await gameRepository.getGames();
      emit(state.copyWith(status: AllGamesStatus.success, gamesList: gamesList));
    } catch (e) {
      emit(state.copyWith(status: AllGamesStatus.error));
    }
  }
}
