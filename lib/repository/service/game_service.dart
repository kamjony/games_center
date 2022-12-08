import 'package:dio/dio.dart';
import 'package:games_center/repository/models/game_details_model.dart';
import 'package:games_center/repository/models/games_list_model.dart';
import 'package:games_center/utils/constants.dart';
import 'dart:developer' as developer;

///A class to make api calls and return results using Dio

class GameService {
  final String baseUrl;
  final Dio _dioClient;

  GameService({Dio? dioClient, this.baseUrl = 'https://api.rawg.io/api'})
      : _dioClient = dioClient ??
            Dio(BaseOptions(
              connectTimeout: 30 * 1000,
              receiveTimeout: 30 * 1000,
              // headers: {
              //   'Content-Type': 'application/json',
              // },
            ));

  String getUrl({
    required String url,
    Map<String, String>? extraParameters,
  }) {
    final queryParameters = <String, String>{'key': RAWG_API_KEY};
    if (extraParameters != null) {
      queryParameters.addAll(extraParameters);
    }

    return Uri.parse('$baseUrl/$url').replace(queryParameters: queryParameters).toString();
  }

  Future<GamesListModel?> getGames() async {
    late Response response;
    Map<String, String> params = {};
    // params['page_size'] = '2';
    // params['page'] = '1';
    try {
      response = await _dioClient.get(getUrl(url: 'games', extraParameters: params));
    } on DioError catch (e) {
      developer.log(e.toString());
    }
    if (response.statusCode == 200) {
      if (response.data != null) {
        return GamesListModel.fromJson(response.data);
      }
    }
    return null;
  }

  Future<List<Genre>?> getGenres() async {
    late Response response;
    try {
      response = await _dioClient.get(getUrl(url: 'genres'));
    } on DioError catch (e) {
      developer.log(e.toString());
    }
    if (response.statusCode == 200) {
      if (response.data != null) {
        return List<Genre>.from(response.data['results'].map((data)=> Genre.fromJson(data)));
      }
    }
    return null;
  }

  Future<List<Result>?> getGamesByCategory(int genreId) async {
    late Response response;
    try {
      response = await _dioClient
          .get(getUrl(url: 'games', extraParameters: {'genres': genreId.toString()}));
      developer.log('getGamesByCategory: ${response.data}');
    } on DioError catch (e) {
      developer.log(e.toString());
    }
    if (response.statusCode == 200) {
      if (response.data != null) {
        return List<Result>.from(response.data['results'].map((data)=>Result.fromJson(data)));
      }
    }
    return null;
  }
  
  Future<GameDetailsModel?> getGameDetails(int gameId) async {
    late Response response;
    try {
      response = await _dioClient.get(
        getUrl(url: 'games/$gameId')
      );
    } on DioError catch (e) {
      developer.log(e.toString());
    }
    if (response.statusCode == 200) {
      if (response.data != null) {
        return GameDetailsModel.fromJson(response.data);
      }
    }
    return null;
  }
}
