import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_center/ui/game_details/widgets/game_details_widget/bloc/game_details_bloc.dart';
import 'package:games_center/ui/game_details/widgets/game_details_widget/bloc/game_details_state.dart';
import 'package:games_center/ui/game_details/widgets/game_details_widget/game_details_success_widget.dart';

class GameDetailsWidget extends StatelessWidget {
  const GameDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameDetailsBloc, GameDetailsState>(
      builder: (context, state) {
        return state.status.isSuccess
            ? GameDetailsSuccessWidget(gameDetails: state.gameDetails)
            : state.status.isLoading
            ? const Center(child: CircularProgressIndicator())
            : state.status.isError
            ? const Center(child: Text('Error while loading'))
            : state.status.isShowMore
            ? GameDetailsSuccessWidget(gameDetails: state.gameDetails)
            : Container();
      },
    );
    // return BlocBuilder<GameDetailsBloc, GameDetailsState> (
    //   buildWhen: (previous, current) => current.status.isSuccess,
    //   builder: (context, state) {
    //     return GameDetailsSuccessWidget(gameDetails: state.gameDetails);
    //   },
    // );
  }
}
