import 'package:flutter/material.dart';
import 'package:games_center/ui/game_details/widgets/game_details_widget/games_details_widget.dart';

class GameDetailsLayout extends StatelessWidget {
  const GameDetailsLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      // fit: StackFit.expand,
      children: [
        const GameDetailsWidget(),
        Positioned(
          top: 50,
          left: 10,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: const Icon(Icons.arrow_back_ios_new, color: Colors.white,)),
          ),
        )
      ],
    );
  }
}
