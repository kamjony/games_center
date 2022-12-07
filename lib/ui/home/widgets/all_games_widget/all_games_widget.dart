import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_center/ui/home/widgets/all_games_widget/all_games_success_widget.dart';
import 'package:games_center/ui/home/widgets/all_games_widget/bloc/all_games_bloc.dart';
import 'package:games_center/ui/home/widgets/all_games_widget/bloc/all_games_state.dart';

class AllGamesWidget extends StatelessWidget {
  final String title;

  const AllGamesWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllGamesBloc, AllGamesState>(
      builder: (context, state) {
        return state.status.isSuccess
            ? AllGamesSuccessWidget(title: title, gamesList: state.gamesList.results!,)
            : state.status.isLoading
            ? const Center(child: CircularProgressIndicator())
            : state.status.isError
            ? const Center(child: Text('Error while loading'))
            : Container();
      },
    );
  }
}
