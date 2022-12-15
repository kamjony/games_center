import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_center/ui/game_details/widgets/game_trailers_widget/bloc/game_trailers_bloc.dart';
import 'package:games_center/ui/game_details/widgets/game_trailers_widget/bloc/game_trailers_state.dart';
import 'package:games_center/ui/game_details/widgets/game_trailers_widget/game_trailers_success_widget.dart';

class GameTrailersWidget extends StatelessWidget {
  const GameTrailersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GameTrailersBloc, GameTrailersState>(
      buildWhen: (previous, current) => current.status.isSuccess,
      builder: (context, state) {
        return GameTrailersSuccessWidget(trailersList: state.trailers);
      },
    );
  }
}
