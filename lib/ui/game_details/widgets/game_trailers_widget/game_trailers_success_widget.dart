import 'package:flutter/material.dart';
import 'package:games_center/repository/models/game_trailers_model.dart';

import 'game_trailers_item.dart';

class GameTrailersSuccessWidget extends StatelessWidget {
  final List<TrailerResult> trailersList;

  const GameTrailersSuccessWidget({Key? key, required this.trailersList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        trailersList.isNotEmpty
            ? const Padding(
                padding: EdgeInsets.only(
                  // left: 24.0,
                  // bottom: 16.0,
                ),
                child: Text(
                  'Game Trailers',
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              )
            : Container(),
        SizedBox(
          height: MediaQuery.of(context).size.height * .2,
          child: ListView.separated(
            itemCount: trailersList.length,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GameTrailersItem(
                title: trailersList[index].name ?? 'No Title Found',
              );
            },
            separatorBuilder: (_, __) => const SizedBox(
              width: 25.0,
            ),
          ),
        ),
      ],
    );
  }
}
