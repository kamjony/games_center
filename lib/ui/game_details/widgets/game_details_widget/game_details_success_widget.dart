import 'package:flutter/material.dart';
import 'package:games_center/repository/models/game_details_model.dart';
import 'package:games_center/ui/game_details/widgets/game_details_widget/game_details_container.dart';
import 'package:games_center/ui/game_details/widgets/game_details_widget/game_details_image.dart';

class GameDetailsSuccessWidget extends StatelessWidget {
  final GameDetailsModel gameDetails;

  const GameDetailsSuccessWidget({Key? key, required this.gameDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GameDetailsImage(
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width,
            backgroundImage: gameDetails.backgroundImage ?? ''),
        Align(
          alignment: Alignment.bottomCenter,
          child: GameDetailsContainer(
            children: [
              Row(
                children: [
                  GameDetailsImage(
                      height: 80, width: 80, backgroundImage: gameDetails.backgroundImage ?? ''),
                  const SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(gameDetails.name ?? '',
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      Text(getGenres(gameDetails.genres!) ?? '',
                          style: const TextStyle(fontSize: 14, color: Colors.black45)),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Colors.orangeAccent,
                            size: 16,
                          ),
                          const SizedBox(width: 5),
                          Text(gameDetails.rating.toString(), style: const TextStyle(fontSize: 12))
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 10),
              Text(gameDetails.descriptionRaw ?? '',
                  style: const TextStyle(fontSize: 14, color: Colors.black45))
            ],
          ),
        ),
      ],
    );
  }

  String? getGenres(List<Developer> genre) {
    String genreString = '';
    for (int i = 0; i < genre.length; i++) {
      if (i == genre.length - 1) {
        genreString += genre[i].name!;
      } else {
        genreString += '${genre[i].name}, ';
      }
    }
    return genreString;
  }
}
