// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'polygon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PolygonModel _$PolygonModelFromJson(Map<String, dynamic> json) => PolygonModel(
      id: json['id'] as int?,
      title: json['title'] as String?,
      points: (json['points'] as List<dynamic>?)
          ?.map((e) => LatLng.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PolygonModelToJson(PolygonModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'points': instance.points,
    };
