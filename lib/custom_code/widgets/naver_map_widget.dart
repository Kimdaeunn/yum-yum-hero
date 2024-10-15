// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_naver_map/flutter_naver_map.dart';

class NaverMapWidget extends StatefulWidget {
  const NaverMapWidget({
    super.key,
    this.width,
    this.height,
    this.placeList,
  });

  final double? width;
  final double? height;
  final List<PlacesRecord>? placeList;

  @override
  State<NaverMapWidget> createState() => _NaverMapWidgetState();
}

class _NaverMapWidgetState extends State<NaverMapWidget> {
  late NaverMapController _mapController;
//  final Completer<NaverMapController> mapControllerCompleter = Completer();

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final pixelRatio = mediaQuery.devicePixelRatio;
    final mapSize =
        Size(mediaQuery.size.width - 32, mediaQuery.size.height - 72);
    final physicalSize =
        Size(mapSize.width * pixelRatio, mapSize.height * pixelRatio);

    print("physicalSize: $physicalSize");

    return Scaffold(
      body: Center(
          child: SizedBox(
              width: mapSize.width,
              height: mapSize.height,
              // color: Colors.greenAccent,
              child: _naverMapSection())),
    );
  }

  Widget _naverMapSection() => NaverMap(
        options: const NaverMapViewOptions(
            indoorEnable: true,
            locationButtonEnable: false,
            consumeSymbolTapEvents: false),
        //   onMapReady: (controller) async {
        //   _mapController = controller;
        //         mapControllerCompleter.complete(controller);
        //       log("onMapReady", name: "onMapReady");
        //},
      );
}
