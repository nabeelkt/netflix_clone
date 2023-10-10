import 'package:json_annotation/json_annotation.dart';

part 'home_resp.g.dart';

@JsonSerializable()
class HomeResp {
  @JsonKey(name: 'page')
  num? page;

  @JsonKey(name: 'results')
  List<HomeData>? results;

  HomeResp({this.page, this.results = const []});

  factory HomeResp.fromJson(Map<String, dynamic> json) {
    return _$HomeRespFromJson(json);
  }
  Map<String, dynamic> toJson() => _$HomeRespToJson(this);
}

@JsonSerializable()
class HomeData {
  @JsonKey(name: 'backdrop_Path')
  String? backdropPath;

  @JsonKey(name: 'id')
  num? id;

  @JsonKey(name: 'original_title')
  String? originalTitle;

  @JsonKey(name: 'poster_path')
  String? posterPath;

  HomeData({
    this.backdropPath,
    this.id,
    this.originalTitle,
    this.posterPath,
  });

  factory HomeData.fromJson(Map<String, dynamic> json) {
    return _$HomeDataFromJson(json);
  }
  Map<String, dynamic> toJson() => _$HomeDataToJson(this);
}
