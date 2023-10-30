import 'package:cts_tappable/cts_tappable.dart';
import 'package:flutter/material.dart';
import 'package:cts_flutter_map/cts_flutter_map.dart';
import 'package:get/get.dart';
import '../models/polygon_data.dart';

class MapController extends GetxController {
  final polygons = RxList<Polygon>();

  @override
  void onInit() {
    generatePolygons();
    super.onInit();
  }

  void generatePolygons() {
    for (final p in polygonsData) {
      final points = p.map((e) => LatLng(e[1], e[0])).toList();

      final id = polygonsData.indexOf(p);

      polygons.add(
        Polygon(
          id: '$id',
          borderColor: Colors.red,
          borderStrokeWidth: 3,
          points: points,
          labelPlacement: PolygonLabelPlacement.centroid,
          label: 'Label $id',
          labelStyle: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }
  }

  void removePolygon(String id) async {
    await Future.delayed(Duration.zero);
    polygons.removeWhere((e) => e.id == id);
  }

  void onTap(_, LatLng point) {
    for (final p in polygons) {
      if (CtsTappable.isPointInPolygon(point: point, polygon: p.points)) {
        removePolygon(p.id);
        // Show Dialog
        // Get.defaultDialog(
        //   content: SizedBox(
        //     width: Get.width - 40,
        //     child: Column(
        //       children: [
        //         Text('Polygon id ${p.id}'),
        //       ],
        //     ),
        //   ),
        // );
      }
    }
  }
}
