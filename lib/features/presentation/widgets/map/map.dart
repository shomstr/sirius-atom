import 'package:flutter/material.dart';

import 'package:yandex_maps_mapkit_lite/mapkit.dart';
import 'package:yandex_maps_mapkit_lite/mapkit_factory.dart';
import 'package:yandex_maps_mapkit_lite/yandex_map.dart';

class DefaultMap extends StatefulWidget {
  const DefaultMap({super.key});

  @override
  State<DefaultMap> createState() => DefaultMapState();
}

class DefaultMapState extends State<DefaultMap> {
  MapWindow? _mapWindow;

  @override
  Widget build(BuildContext context) {
    return YandexMap(onMapCreated: (mapWindow) {
      _mapWindow = mapWindow;
      mapkit.onStart();
    }, platformViewType: PlatformViewType.Hybrid);
  }
}