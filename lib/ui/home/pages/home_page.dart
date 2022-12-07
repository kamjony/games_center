import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_center/repository/game_repository.dart';
import 'package:games_center/repository/service/game_service.dart';
import 'package:games_center/ui/home/pages/home_layout.dart';
import 'package:games_center/ui/home/widgets/all_games_widget/bloc/all_games_bloc.dart';
import 'package:games_center/ui/home/widgets/all_games_widget/bloc/all_games_event.dart';
import 'package:games_center/ui/home/widgets/category_widget/bloc/category_bloc.dart';
import 'package:games_center/ui/home/widgets/category_widget/bloc/category_event.dart';
import 'package:games_center/ui/home/widgets/games_by_category_widget/bloc/games_by_category_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      body: RepositoryProvider(
        create: (context) => GameRepository(service: GameService()),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<AllGamesBloc>(
              create: (context) => AllGamesBloc(
                gameRepository: context.read<GameRepository>(),
              )..add(GetGames()),
            ),
            BlocProvider<CategoryBloc>(
                create: (context) => CategoryBloc(
                  gameRepository: context.read<GameRepository>(),
                )..add(GetCategories()),
            ),
            BlocProvider<GamesByCategoryBloc>(
              create: (context) => GamesByCategoryBloc(
                gameRepository: context.read<GameRepository>()
              ),
            )
          ],
          child: const HomeLayout(),
        ),
      ),
    );
  }
}
