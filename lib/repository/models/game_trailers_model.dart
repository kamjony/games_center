// To parse this JSON data, do
//
//     final gameTrailersModel = gameTrailersModelFromJson(jsonString);

import 'dart:convert';

GameTrailersModel gameTrailersModelFromJson(String str) => GameTrailersModel.fromJson(json.decode(str));

String gameTrailersModelToJson(GameTrailersModel data) => json.encode(data.toJson());

class GameTrailersModel {
  GameTrailersModel({
    this.count,
    this.next,
    this.previous,
    this.results,
  });

  int? count;
  dynamic next;
  dynamic previous;
  List<TrailerResult>? results;

  factory GameTrailersModel.fromJson(Map<String, dynamic> json) => GameTrailersModel(
    count: json["count"] == null ? null : json["count"],
    next: json["next"],
    previous: json["previous"],
    results: json["results"] == null ? null : List<TrailerResult>.from(json["results"].map((x) => TrailerResult.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count == null ? null : count,
    "next": next,
    "previous": previous,
    "results": results == null ? null : List<dynamic>.from(results!.map((x) => x.toJson())),
  };
}

class TrailerResult {
  TrailerResult({
    this.id,
    this.name,
    this.preview,
    this.data,
  });

  int? id;
  String? name;
  String? preview;
  TrailersData? data;

  factory TrailerResult.fromJson(Map<String, dynamic> json) => TrailerResult(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    preview: json["preview"] == null ? null : json["preview"],
    data: json["data"] == null ? null : TrailersData.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "preview": preview == null ? null : preview,
    "data": data == null ? null : data!.toJson(),
  };
}

class TrailersData {
  TrailersData({
    this.the480,
    this.max,
  });

  String? the480;
  String? max;

  factory TrailersData.fromJson(Map<String, dynamic> json) => TrailersData(
    the480: json["480"] == null ? null : json["480"],
    max: json["max"] == null ? null : json["max"],
  );

  Map<String, dynamic> toJson() => {
    "480": the480 == null ? null : the480,
    "max": max == null ? null : max,
  };
}
