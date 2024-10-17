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

import 'index.dart'; // Imports other custom widgets

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
  late NaverMapController _mapController; // For controlling the map

  Future<void> _addMarkersToMap() async {
    // Initialize a Set to store the markers
    Set<NMarker> markerSet = {};

    // Check if the placeList is not null
    if (widget.placeList != null) {
      // Iterate through each place in the list
      for (var place in widget.placeList!) {
        // Retrieve the LatLng from the 'location' field (assuming it's LatLng now)
        LatLng? latLng = place.location;

        if (latLng != null) {
          // Convert LatLng to NLatLng
          NLatLng position = NLatLng(latLng.latitude, latLng.longitude);

          // Create the NMarker using the document ID (or any other unique identifier)
          NMarker marker = NMarker(
            id: place.reference.id, // Use the document ID as the marker ID
            position: position,
          );

          // Add the marker to the Set
          markerSet.add(marker);
        }
      }

      // Add all markers in the set to the map controller
      _mapController.addOverlayAll(markerSet);
    }

    for (var marker in markerSet) {
      // Get the place name from widget.placeList by matching the marker's id
      final place = widget.placeList!
          .firstWhere((place) => place.reference.id == marker.info.id);

      // Create the NInfoWindow for the marker (e.g., using the place name)
      final onMarkerInfoWindow = NInfoWindow.onMarker(
        id: marker.info.id, // Use the marker's ID for the info window
        text: place.name ?? '염염히어로 플레이스', // Display the place name
      );

      // Attach the info window to the marker
      marker.openInfoWindow(onMarkerInfoWindow);
    }
  }

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
            zoomGesturesEnable: true,
            initialCameraPosition: NCameraPosition(
                target: NLatLng(37.497175, 127.027926),
                zoom: 10,
                bearing: 0,
                tilt: 0),
            indoorEnable: true,
            locationButtonEnable: false,
            consumeSymbolTapEvents: false),
        onMapReady: (controller) async {
          _mapController = controller; // Store the map controller
          // Once the map is ready, add the markers
          await _addMarkersToMap(); // Add markers when the map is ready
        },
      );
}
