import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:games_center/repository/models/game_data.dart';
import 'package:games_center/repository/models/games_list_model.dart';
import 'package:games_center/ui/home/widgets/all_games_widget/all_games_item_button.dart';
import 'package:games_center/ui/home/widgets/all_games_widget/all_games_item_image.dart';

import 'all_games_item_rating.dart';

class AllGamesItem extends StatelessWidget {
  final Result game;

  const AllGamesItem({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey.withOpacity(.1),
      ),
      child: Stack(
        children: [
          Positioned(
              left: 20.0,
              top: 15.0,
              bottom: 15.0,
              child: AllGamesItemImage(
                backgroundImage: game.backgroundImage ?? '',
              )),
          Positioned(
            top: 25.0,
            left: 100.0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Text(
                game.name ?? '',
                style: const TextStyle(fontSize: 12.0),
              ),
            ),
          ),
          Positioned(
            top: 65.0,
            left: 100.0,
            child: AllGamesItemRating(rating: game.rating ?? 0.0),
          ),
          Positioned(
            right: 20.0,
            bottom: 10.0,
            child: AllGamesItemButton(
              callback: () {
                Navigator.pushNamed(context, '/game_details',
                    arguments: GameData(gameId: game.id!, gameName: game.name!));
              },
            ),
          )
        ],
      ),
    );
  }
}
