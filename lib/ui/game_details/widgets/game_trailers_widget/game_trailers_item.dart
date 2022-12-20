import 'package:flutter/material.dart';

class GameTrailersItem extends StatelessWidget {
  final String title;
  const GameTrailersItem({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: 270.0,
          height: 150.0,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.black45, Colors.grey[200]!],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            borderRadius: BorderRadius.circular(20.0),
            border: Border.all(color: Colors.black)
          ),
          child: const Icon(Icons.play_arrow, size: 32,),
        ),
        Container(
          padding: const EdgeInsets.only(
            left: 8.0,
            right: 8.0,
          ),
          alignment: Alignment.centerLeft,
          height: 40.0,
          width: 270.0,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(20.0),
              bottomRight: Radius.circular(20.0),
            ),
            color: Colors.grey.withOpacity(0.5),
          ),
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        )

      ],
    );
  }
}
