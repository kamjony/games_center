import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_center/repository/game_repository.dart';
import 'package:games_center/repository/models/game_data.dart';
import 'package:games_center/repository/service/game_service.dart';
import 'package:games_center/ui/game_details/pages/game_details_layout.dart';
import 'package:games_center/ui/game_details/widgets/game_details_widget/bloc/game_details_bloc.dart';
import 'package:games_center/ui/game_details/widgets/game_details_widget/bloc/game_details_event.dart';

class GameDetailsPage extends StatelessWidget {
  const GameDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GameData gameData = ModalRoute.of(context)!.settings.arguments as GameData;
    return Scaffold(
      // appBar: AppBar(title: Text(gameData.gameName ?? '')),
      backgroundColor: Colors.deepOrangeAccent,
      body: RepositoryProvider(
        create: (context) => GameRepository(service: GameService()),
        child: BlocProvider<GameDetailsBloc>(
          create: (context) => GameDetailsBloc(
            gameRepository: context.read<GameRepository>(),
          )..add(GetGameDetails(gameId: gameData.gameId, gameName: gameData.gameName)),
          child: const GameDetailsLayout(),
        ),
      ),
    );
  }
}
