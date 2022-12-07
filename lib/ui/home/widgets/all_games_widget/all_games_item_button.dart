import 'package:flutter/material.dart';

class AllGamesItemButton extends StatelessWidget {
  final VoidCallback callback;
  const AllGamesItemButton({Key? key, required this.callback}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        alignment: Alignment.center,
        width: 65.0,
        height: 30.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Colors.amberAccent
        ),
        child: const Text(
          'View More',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 9.0,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }
}
