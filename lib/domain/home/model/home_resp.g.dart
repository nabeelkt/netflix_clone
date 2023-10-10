// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResp _$HomeRespFromJson(Map<String, dynamic> json) => HomeResp(
      page: json['page'] as num?,
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => HomeData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HomeRespToJson(HomeResp instance) => <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

HomeData _$HomeDataFromJson(Map<String, dynamic> json) => HomeData(
      backdropPath: json['backdrop_Path'] as String?,
      id: json['id'] as num?,
      originalTitle: json['original_title'] as String?,
      posterPath: json['poster_path'] as String?,
    );

Map<String, dynamic> _$HomeDataToJson(HomeData instance) => <String, dynamic>{
      'backdrop_Path': instance.backdropPath,
      'id': instance.id,
      'original_title': instance.originalTitle,
      'poster_path': instance.posterPath,
    };
