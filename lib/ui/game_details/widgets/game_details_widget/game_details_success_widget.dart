import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_center/repository/models/game_details_model.dart';
import 'package:games_center/ui/game_details/widgets/background_image/game_details_background_image.dart';
import 'package:games_center/ui/game_details/widgets/game_details_widget/bloc/game_details_bloc.dart';
import 'package:games_center/ui/game_details/widgets/game_details_widget/bloc/game_details_event.dart';
import 'package:games_center/ui/game_details/widgets/game_details_widget/bloc/game_details_state.dart';

class GameDetailsSuccessWidget extends StatelessWidget {
  final GameDetailsModel gameDetails;

  const GameDetailsSuccessWidget({Key? key, required this.gameDetails}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            GameDetailsBackgroundImage(
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

        BlocSelector<GameDetailsBloc, GameDetailsState, bool>(
          selector: (state) => state.showMore,
          builder: (context, state) {
            return RichText(
              // maxLines: !state ? 2 : null,
              text: TextSpan(
                  text: state ? '${gameDetails.descriptionRaw ?? ''}   ' : '${gameDetails.descriptionRaw!.substring(0,125)}...  ',
                  style: const TextStyle(fontSize: 15.0, color: Colors.black45),
                children: [
                  TextSpan(
                    text: state ? 'Show Less' : 'Show More',
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        if (state) {
                          context.read<GameDetailsBloc>().add(
                              ShowMoreGameDescription(showMore: false));
                        } else {
                          context.read<GameDetailsBloc>().add(
                              ShowMoreGameDescription(showMore: true));
                        }
                      },
                    style: const TextStyle(
                      color: Colors.lightBlueAccent,
                      decoration: TextDecoration.underline
                    )
                  )
                ]
              ),
            );
          },
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
