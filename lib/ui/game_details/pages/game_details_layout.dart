import 'package:flutter/material.dart';
import 'package:games_center/ui/game_details/widgets/background_image/game_details_background_image.dart';
import 'package:games_center/ui/game_details/widgets/game_details_widget/games_details_widget.dart';
import 'package:games_center/ui/game_details/widgets/game_trailers_widget/game_trailers_widget.dart';
import 'package:games_center/ui/widgets/game_details_container.dart';

class GameDetailsLayout extends StatelessWidget {
  final String backgroundImage;

  const GameDetailsLayout({Key? key, required this.backgroundImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.expand,
      children: [
        GameDetailsBackgroundImage(
            height: MediaQuery.of(context).size.height * 0.55,
            width: MediaQuery.of(context).size.width,
            backgroundImage: backgroundImage ?? ''),
        const Align(
          alignment: Alignment.bottomCenter,
          child:  GameDetailsContainer(children: [
            GameDetailsWidget(),
            const SizedBox(height: 10),
            GameTrailersWidget(),
          ]),
        ),
        Positioned(
          top: 50,
          left: 10,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent, borderRadius: BorderRadius.circular(10.0)),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  color: Colors.white,
                )),
          ),
        )
      ],
    );
  }
}
