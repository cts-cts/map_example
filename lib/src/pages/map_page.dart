import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:map_example/src/base/base.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  // void onPolygon(TapPosition tapPosition, LatLng point) {
  //   // bool isGeoPointInPolygon =
  //   //     geodesy.isGeoPointInPolygon(point, pointsGradient);
  //   // if (isGeoPointInPolygon) {
  //   //   Get.defaultDialog(
  //   //     title: 'Polygon Info',
  //   //     content: Column(
  //   //       children: const [
  //   //         Text('Polygon  Data here'),
  //   //       ],
  //   //     ),
  //   //   );
  //   // }
  //   // for (var element in polygones) {
  //   //   // if point is on the polygon isGeoPointInPolygon iS true

  //   // }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => FlutterMap(
          options: MapOptions(
            initialZoom: 17,
            initialCenter: Base.mapController.polygons.first.points.first,
            onTap: Base.mapController.onTap,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            ),
            PolygonLayer(
              polygonLabels: true,
              polygons: Base.mapController.polygons,
            ),
          ],
        ),
      ),
    );
  }
}
