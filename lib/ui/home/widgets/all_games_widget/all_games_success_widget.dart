import 'package:flutter/material.dart';
import 'package:games_center/repository/models/games_list_model.dart';

import 'all_games_item.dart';

class AllGamesSuccessWidget extends StatelessWidget {
  final List<Result> gamesList;
  final String title;

  const AllGamesSuccessWidget({Key? key, required this.gamesList, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        ),
        Container(
          height: ((100 * gamesList.length) + MediaQuery.of(context).size.width) + 24.0,
          child: ListView.separated(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.only(
                left: 24.0,
                right: 24.0,
                top: 24.0,
              ),
              itemBuilder: (context, index) {
                return AllGamesItem(
                  game: gamesList[index],
                );
              },
              separatorBuilder: (context, index) => const SizedBox(height: 20.0),
              itemCount: gamesList.length),
        )
      ],
    );
  }
}
