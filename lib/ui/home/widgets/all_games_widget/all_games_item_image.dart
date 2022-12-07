import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AllGamesItemImage extends StatelessWidget {
  final String backgroundImage;

  const AllGamesItemImage({Key? key, required this.backgroundImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: backgroundImage,
      imageBuilder: (context, imgProvider) {
        return Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                image: NetworkImage(
                    backgroundImage
                ),
                fit: BoxFit.cover,
              )
          ),
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
    );
  }
}
