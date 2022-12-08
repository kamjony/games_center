// To parse this JSON data, do
//
//     final gameDetailsModel = gameDetailsModelFromJson(jsonString);

import 'dart:convert';

GameDetailsModel gameDetailsModelFromJson(String str) => GameDetailsModel.fromJson(json.decode(str));

String gameDetailsModelToJson(GameDetailsModel data) => json.encode(data.toJson());

class GameDetailsModel {
  const GameDetailsModel({
    this.id,
    this.slug,
    this.name,
    this.nameOriginal,
    this.description,
    this.metacritic,
    this.metacriticPlatforms,
    this.released,
    this.tba,
    this.updated,
    this.backgroundImage,
    this.backgroundImageAdditional,
    this.website,
    this.rating,
    this.ratingTop,
    this.ratings,
    this.reactions,
    this.added,
    this.addedByStatus,
    this.playtime,
    this.screenshotsCount,
    this.moviesCount,
    this.creatorsCount,
    this.achievementsCount,
    this.parentAchievementsCount,
    this.redditUrl,
    this.redditName,
    this.redditDescription,
    this.redditLogo,
    this.redditCount,
    this.twitchCount,
    this.youtubeCount,
    this.reviewsTextCount,
    this.ratingsCount,
    this.suggestionsCount,
    this.alternativeNames,
    this.metacriticUrl,
    this.parentsCount,
    this.additionsCount,
    this.gameSeriesCount,
    this.userGame,
    this.reviewsCount,
    this.saturatedColor,
    this.dominantColor,
    this.parentPlatforms,
    this.platforms,
    this.stores,
    this.developers,
    this.genres,
    this.tags,
    this.publishers,
    this.esrbRating,
    this.clip,
    this.descriptionRaw,
  });

  final int? id;
  final String? slug;
  final String? name;
  final String? nameOriginal;
  final String? description;
  final int? metacritic;
  final List<MetacriticPlatform>? metacriticPlatforms;
  final DateTime? released;
  final bool? tba;
  final DateTime? updated;
  final String? backgroundImage;
  final String? backgroundImageAdditional;
  final String? website;
  final double? rating;
  final int? ratingTop;
  final List<Rating>? ratings;
  final Map<String, int>? reactions;
  final int? added;
  final AddedByStatus? addedByStatus;
  final int? playtime;
  final int? screenshotsCount;
  final int? moviesCount;
  final int? creatorsCount;
  final int? achievementsCount;
  final int? parentAchievementsCount;
  final String? redditUrl;
  final String? redditName;
  final String? redditDescription;
  final String? redditLogo;
  final int? redditCount;
  final int? twitchCount;
  final int? youtubeCount;
  final int? reviewsTextCount;
  final int? ratingsCount;
  final int? suggestionsCount;
  final List<String>? alternativeNames;
  final String? metacriticUrl;
  final int? parentsCount;
  final int? additionsCount;
  final int? gameSeriesCount;
  final dynamic userGame;
  final int? reviewsCount;
  final String? saturatedColor;
  final String? dominantColor;
  final List<ParentPlatform>? parentPlatforms;
  final List<PlatformElement>? platforms;
  final List<Store>? stores;
  final List<Developer>? developers;
  final List<Developer>? genres;
  final List<Developer>? tags;
  final List<Developer>? publishers;
  final EsrbRating? esrbRating;
  final dynamic clip;
  final String? descriptionRaw;

  factory GameDetailsModel.fromJson(Map<String, dynamic> json) => GameDetailsModel(
    id: json["id"] == null ? null : json["id"],
    slug: json["slug"] == null ? null : json["slug"],
    name: json["name"] == null ? null : json["name"],
    nameOriginal: json["name_original"] == null ? null : json["name_original"],
    description: json["description"] == null ? null : json["description"],
    metacritic: json["metacritic"] == null ? null : json["metacritic"],
    metacriticPlatforms: json["metacritic_platforms"] == null ? null : List<MetacriticPlatform>.from(json["metacritic_platforms"].map((x) => MetacriticPlatform.fromJson(x))),
    released: json["released"] == null ? null : DateTime.parse(json["released"]),
    tba: json["tba"] == null ? null : json["tba"],
    updated: json["updated"] == null ? null : DateTime.parse(json["updated"]),
    backgroundImage: json["background_image"] == null ? null : json["background_image"],
    backgroundImageAdditional: json["background_image_additional"] == null ? null : json["background_image_additional"],
    website: json["website"] == null ? null : json["website"],
    rating: json["rating"] == null ? null : json["rating"].toDouble(),
    ratingTop: json["rating_top"] == null ? null : json["rating_top"],
    ratings: json["ratings"] == null ? null : List<Rating>.from(json["ratings"].map((x) => Rating.fromJson(x))),
    reactions: json["reactions"] == null ? null : Map.from(json["reactions"]).map((k, v) => MapEntry<String, int>(k, v)),
    added: json["added"] == null ? null : json["added"],
    addedByStatus: json["added_by_status"] == null ? null : AddedByStatus.fromJson(json["added_by_status"]),
    playtime: json["playtime"] == null ? null : json["playtime"],
    screenshotsCount: json["screenshots_count"] == null ? null : json["screenshots_count"],
    moviesCount: json["movies_count"] == null ? null : json["movies_count"],
    creatorsCount: json["creators_count"] == null ? null : json["creators_count"],
    achievementsCount: json["achievements_count"] == null ? null : json["achievements_count"],
    parentAchievementsCount: json["parent_achievements_count"] == null ? null : json["parent_achievements_count"],
    redditUrl: json["reddit_url"] == null ? null : json["reddit_url"],
    redditName: json["reddit_name"] == null ? null : json["reddit_name"],
    redditDescription: json["reddit_description"] == null ? null : json["reddit_description"],
    redditLogo: json["reddit_logo"] == null ? null : json["reddit_logo"],
    redditCount: json["reddit_count"] == null ? null : json["reddit_count"],
    twitchCount: json["twitch_count"] == null ? null : json["twitch_count"],
    youtubeCount: json["youtube_count"] == null ? null : json["youtube_count"],
    reviewsTextCount: json["reviews_text_count"] == null ? null : json["reviews_text_count"],
    ratingsCount: json["ratings_count"] == null ? null : json["ratings_count"],
    suggestionsCount: json["suggestions_count"] == null ? null : json["suggestions_count"],
    alternativeNames: json["alternative_names"] == null ? null : List<String>.from(json["alternative_names"].map((x) => x)),
    metacriticUrl: json["metacritic_url"] == null ? null : json["metacritic_url"],
    parentsCount: json["parents_count"] == null ? null : json["parents_count"],
    additionsCount: json["additions_count"] == null ? null : json["additions_count"],
    gameSeriesCount: json["game_series_count"] == null ? null : json["game_series_count"],
    userGame: json["user_game"],
    reviewsCount: json["reviews_count"] == null ? null : json["reviews_count"],
    saturatedColor: json["saturated_color"] == null ? null : json["saturated_color"],
    dominantColor: json["dominant_color"] == null ? null : json["dominant_color"],
    parentPlatforms: json["parent_platforms"] == null ? null : List<ParentPlatform>.from(json["parent_platforms"].map((x) => ParentPlatform.fromJson(x))),
    platforms: json["platforms"] == null ? null : List<PlatformElement>.from(json["platforms"].map((x) => PlatformElement.fromJson(x))),
    stores: json["stores"] == null ? null : List<Store>.from(json["stores"].map((x) => Store.fromJson(x))),
    developers: json["developers"] == null ? null : List<Developer>.from(json["developers"].map((x) => Developer.fromJson(x))),
    genres: json["genres"] == null ? null : List<Developer>.from(json["genres"].map((x) => Developer.fromJson(x))),
    tags: json["tags"] == null ? null : List<Developer>.from(json["tags"].map((x) => Developer.fromJson(x))),
    publishers: json["publishers"] == null ? null : List<Developer>.from(json["publishers"].map((x) => Developer.fromJson(x))),
    esrbRating: json["esrb_rating"] == null ? null : EsrbRating.fromJson(json["esrb_rating"]),
    clip: json["clip"],
    descriptionRaw: json["description_raw"] == null ? null : json["description_raw"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "slug": slug == null ? null : slug,
    "name": name == null ? null : name,
    "name_original": nameOriginal == null ? null : nameOriginal,
    "description": description == null ? null : description,
    "metacritic": metacritic == null ? null : metacritic,
    "metacritic_platforms": metacriticPlatforms == null ? null : List<dynamic>.from(metacriticPlatforms!.map((x) => x.toJson())),
    "released": released == null ? null : "${released!.year.toString().padLeft(4, '0')}-${released!.month.toString().padLeft(2, '0')}-${released!.day.toString().padLeft(2, '0')}",
    "tba": tba == null ? null : tba,
    "updated": updated == null ? null : updated!.toIso8601String(),
    "background_image": backgroundImage == null ? null : backgroundImage,
    "background_image_additional": backgroundImageAdditional == null ? null : backgroundImageAdditional,
    "website": website == null ? null : website,
    "rating": rating == null ? null : rating,
    "rating_top": ratingTop == null ? null : ratingTop,
    "ratings": ratings == null ? null : List<dynamic>.from(ratings!.map((x) => x.toJson())),
    "reactions": reactions == null ? null : Map.from(reactions!).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "added": added == null ? null : added,
    "added_by_status": addedByStatus == null ? null : addedByStatus!.toJson(),
    "playtime": playtime == null ? null : playtime,
    "screenshots_count": screenshotsCount == null ? null : screenshotsCount,
    "movies_count": moviesCount == null ? null : moviesCount,
    "creators_count": creatorsCount == null ? null : creatorsCount,
    "achievements_count": achievementsCount == null ? null : achievementsCount,
    "parent_achievements_count": parentAchievementsCount == null ? null : parentAchievementsCount,
    "reddit_url": redditUrl == null ? null : redditUrl,
    "reddit_name": redditName == null ? null : redditName,
    "reddit_description": redditDescription == null ? null : redditDescription,
    "reddit_logo": redditLogo == null ? null : redditLogo,
    "reddit_count": redditCount == null ? null : redditCount,
    "twitch_count": twitchCount == null ? null : twitchCount,
    "youtube_count": youtubeCount == null ? null : youtubeCount,
    "reviews_text_count": reviewsTextCount == null ? null : reviewsTextCount,
    "ratings_count": ratingsCount == null ? null : ratingsCount,
    "suggestions_count": suggestionsCount == null ? null : suggestionsCount,
    "alternative_names": alternativeNames == null ? null : List<dynamic>.from(alternativeNames!.map((x) => x)),
    "metacritic_url": metacriticUrl == null ? null : metacriticUrl,
    "parents_count": parentsCount == null ? null : parentsCount,
    "additions_count": additionsCount == null ? null : additionsCount,
    "game_series_count": gameSeriesCount == null ? null : gameSeriesCount,
    "user_game": userGame,
    "reviews_count": reviewsCount == null ? null : reviewsCount,
    "saturated_color": saturatedColor == null ? null : saturatedColor,
    "dominant_color": dominantColor == null ? null : dominantColor,
    "parent_platforms": parentPlatforms == null ? null : List<dynamic>.from(parentPlatforms!.map((x) => x.toJson())),
    "platforms": platforms == null ? null : List<dynamic>.from(platforms!.map((x) => x.toJson())),
    "stores": stores == null ? null : List<dynamic>.from(stores!.map((x) => x.toJson())),
    "developers": developers == null ? null : List<dynamic>.from(developers!.map((x) => x.toJson())),
    "genres": genres == null ? null : List<dynamic>.from(genres!.map((x) => x.toJson())),
    "tags": tags == null ? null : List<dynamic>.from(tags!.map((x) => x.toJson())),
    "publishers": publishers == null ? null : List<dynamic>.from(publishers!.map((x) => x.toJson())),
    "esrb_rating": esrbRating == null ? null : esrbRating!.toJson(),
    "clip": clip,
    "description_raw": descriptionRaw == null ? null : descriptionRaw,
  };
}

class AddedByStatus {
  AddedByStatus({
    this.yet,
    this.owned,
    this.beaten,
    this.toplay,
    this.dropped,
    this.playing,
  });

  int? yet;
  int? owned;
  int? beaten;
  int? toplay;
  int? dropped;
  int? playing;

  factory AddedByStatus.fromJson(Map<String, dynamic> json) => AddedByStatus(
    yet: json["yet"] == null ? null : json["yet"],
    owned: json["owned"] == null ? null : json["owned"],
    beaten: json["beaten"] == null ? null : json["beaten"],
    toplay: json["toplay"] == null ? null : json["toplay"],
    dropped: json["dropped"] == null ? null : json["dropped"],
    playing: json["playing"] == null ? null : json["playing"],
  );

  Map<String, dynamic> toJson() => {
    "yet": yet == null ? null : yet,
    "owned": owned == null ? null : owned,
    "beaten": beaten == null ? null : beaten,
    "toplay": toplay == null ? null : toplay,
    "dropped": dropped == null ? null : dropped,
    "playing": playing == null ? null : playing,
  };
}

class Developer {
  Developer({
    this.id,
    this.name,
    this.slug,
    this.gamesCount,
    this.imageBackground,
    this.domain,
    this.language,
  });

  int? id;
  String? name;
  String? slug;
  int? gamesCount;
  String? imageBackground;
  String? domain;
  String? language;

  factory Developer.fromJson(Map<String, dynamic> json) => Developer(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    slug: json["slug"] == null ? null : json["slug"],
    gamesCount: json["games_count"] == null ? null : json["games_count"],
    imageBackground: json["image_background"] == null ? null : json["image_background"],
    domain: json["domain"] == null ? null : json["domain"],
    language: json["language"] == null ? null : json["language"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "slug": slug == null ? null : slug,
    "games_count": gamesCount == null ? null : gamesCount,
    "image_background": imageBackground == null ? null : imageBackground,
    "domain": domain == null ? null : domain,
    "language": language == null ? null : language,
  };
}

class EsrbRating {
  EsrbRating({
    this.id,
    this.name,
    this.slug,
  });

  int? id;
  String? name;
  String? slug;

  factory EsrbRating.fromJson(Map<String, dynamic> json) => EsrbRating(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    slug: json["slug"] == null ? null : json["slug"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "slug": slug == null ? null : slug,
  };
}

class MetacriticPlatform {
  MetacriticPlatform({
    this.metascore,
    this.url,
    this.platform,
  });

  int? metascore;
  String? url;
  MetacriticPlatformPlatform? platform;

  factory MetacriticPlatform.fromJson(Map<String, dynamic> json) => MetacriticPlatform(
    metascore: json["metascore"] == null ? null : json["metascore"],
    url: json["url"] == null ? null : json["url"],
    platform: json["platform"] == null ? null : MetacriticPlatformPlatform.fromJson(json["platform"]),
  );

  Map<String, dynamic> toJson() => {
    "metascore": metascore == null ? null : metascore,
    "url": url == null ? null : url,
    "platform": platform == null ? null : platform!.toJson(),
  };
}

class MetacriticPlatformPlatform {
  MetacriticPlatformPlatform({
    this.platform,
    this.name,
    this.slug,
  });

  int? platform;
  String? name;
  String? slug;

  factory MetacriticPlatformPlatform.fromJson(Map<String, dynamic> json) => MetacriticPlatformPlatform(
    platform: json["platform"] == null ? null : json["platform"],
    name: json["name"] == null ? null : json["name"],
    slug: json["slug"] == null ? null : json["slug"],
  );

  Map<String, dynamic> toJson() => {
    "platform": platform == null ? null : platform,
    "name": name == null ? null : name,
    "slug": slug == null ? null : slug,
  };
}

class ParentPlatform {
  ParentPlatform({
    this.platform,
  });

  EsrbRating? platform;

  factory ParentPlatform.fromJson(Map<String, dynamic> json) => ParentPlatform(
    platform: json["platform"] == null ? null : EsrbRating.fromJson(json["platform"]),
  );

  Map<String, dynamic> toJson() => {
    "platform": platform == null ? null : platform!.toJson(),
  };
}

class PlatformElement {
  PlatformElement({
    this.platform,
    this.releasedAt,
    this.requirements,
  });

  PlatformPlatform? platform;
  DateTime? releasedAt;
  Requirements? requirements;

  factory PlatformElement.fromJson(Map<String, dynamic> json) => PlatformElement(
    platform: json["platform"] == null ? null : PlatformPlatform.fromJson(json["platform"]),
    releasedAt: json["released_at"] == null ? null : DateTime.parse(json["released_at"]),
    requirements: json["requirements"] == null ? null : Requirements.fromJson(json["requirements"]),
  );

  Map<String, dynamic> toJson() => {
    "platform": platform == null ? null : platform!.toJson(),
    "released_at": releasedAt == null ? null : "${releasedAt!.year.toString().padLeft(4, '0')}-${releasedAt!.month.toString().padLeft(2, '0')}-${releasedAt!.day.toString().padLeft(2, '0')}",
    "requirements": requirements == null ? null : requirements!.toJson(),
  };
}

class PlatformPlatform {
  PlatformPlatform({
    this.id,
    this.name,
    this.slug,
    this.image,
    this.yearEnd,
    this.yearStart,
    this.gamesCount,
    this.imageBackground,
  });

  int? id;
  String? name;
  String? slug;
  dynamic image;
  dynamic yearEnd;
  dynamic yearStart;
  int? gamesCount;
  String? imageBackground;

  factory PlatformPlatform.fromJson(Map<String, dynamic> json) => PlatformPlatform(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    slug: json["slug"] == null ? null : json["slug"],
    image: json["image"],
    yearEnd: json["year_end"],
    yearStart: json["year_start"],
    gamesCount: json["games_count"] == null ? null : json["games_count"],
    imageBackground: json["image_background"] == null ? null : json["image_background"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "slug": slug == null ? null : slug,
    "image": image,
    "year_end": yearEnd,
    "year_start": yearStart,
    "games_count": gamesCount == null ? null : gamesCount,
    "image_background": imageBackground == null ? null : imageBackground,
  };
}

class Requirements {
  Requirements({
    this.minimum,
  });

  String? minimum;

  factory Requirements.fromJson(Map<String, dynamic> json) => Requirements(
    minimum: json["minimum"] == null ? null : json["minimum"],
  );

  Map<String, dynamic> toJson() => {
    "minimum": minimum == null ? null : minimum,
  };
}

class Rating {
  Rating({
    this.id,
    this.title,
    this.count,
    this.percent,
  });

  int? id;
  String? title;
  int? count;
  double? percent;

  factory Rating.fromJson(Map<String, dynamic> json) => Rating(
    id: json["id"] == null ? null : json["id"],
    title: json["title"] == null ? null : json["title"],
    count: json["count"] == null ? null : json["count"],
    percent: json["percent"] == null ? null : json["percent"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "title": title == null ? null : title,
    "count": count == null ? null : count,
    "percent": percent == null ? null : percent,
  };
}

class Store {
  Store({
    this.id,
    this.url,
    this.store,
  });

  int? id;
  String? url;
  Developer? store;

  factory Store.fromJson(Map<String, dynamic> json) => Store(
    id: json["id"] == null ? null : json["id"],
    url: json["url"] == null ? null : json["url"],
    store: json["store"] == null ? null : Developer.fromJson(json["store"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "url": url == null ? null : url,
    "store": store == null ? null : store!.toJson(),
  };
}

