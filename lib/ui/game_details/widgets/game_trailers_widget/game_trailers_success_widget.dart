import 'package:flutter/material.dart';
import 'package:games_center/repository/models/game_trailers_model.dart';

class GameTrailersSuccessWidget extends StatelessWidget {
  final List<TrailerResult> trailersList;
  const GameTrailersSuccessWidget({Key? key, required this.trailersList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        trailersList.isNotEmpty ? Text('Game Trailers', style: TextStyle(color: Colors.black),) : Container(),
        Container(
          height: MediaQuery.of(context).size.height * .2,
          child: ListView.separated(
            itemCount: trailersList.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Text(trailersList[index].name!);
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
