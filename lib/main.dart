import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:games_center/repository/service/game_service.dart';
import 'package:games_center/ui/game_details/pages/game_details_page.dart';
import 'package:games_center/ui/home/pages/home_page.dart';
import 'package:games_center/utils/app_bloc_observer.dart';

void main() {
  Bloc.observer = AppBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Games Center',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: '/',
      // home: HomePage(),
      routes: {
        '/': (context) => const HomePage(),
        '/game_details': (context) => const GameDetailsPage()
      },
    );
  }
}
