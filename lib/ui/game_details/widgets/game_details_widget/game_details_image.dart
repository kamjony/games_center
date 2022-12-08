import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GameDetailsImage extends StatelessWidget {
  final String backgroundImage;
  final double height;
  final double width;

  const GameDetailsImage(
      {Key? key, required this.backgroundImage, required this.height, required this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      child: CachedNetworkImage(
        imageUrl: backgroundImage,
        // fit: BoxFit.cover,
        imageBuilder: (context, imgProvider) {
          return Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: NetworkImage(backgroundImage),
                  fit: BoxFit.cover,
                )),
          );
        },
        placeholder: (context, url) {
          return const Center(child: CircularProgressIndicator());
        },
        errorWidget: (context, url, error) {
          return const Icon(
            Icons.error,
            color: Colors.deepOrangeAccent,
          );
        },
      ),
    );
  }
}
