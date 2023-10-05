import 'package:cts_tappable/cts_tappable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'polygon_model.g.dart';

@JsonSerializable()
class PolygonModel {
  final int? id;
  final String? title;
  final List<LatLng>? points;
  PolygonModel({
    this.id,
    this.title,
    this.points,
  });

  factory PolygonModel.fromJson(Map<String, dynamic> json) =>
      _$PolygonModelFromJson(json);
  Map<String, dynamic> toJson() => _$PolygonModelToJson(this);
}
