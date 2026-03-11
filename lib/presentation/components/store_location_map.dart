import 'package:apple_maps_flutter/apple_maps_flutter.dart' as apple_maps;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart' as google_maps;

class StoreLocationMap extends StatelessWidget {
  final double latitude;
  final double longitude;
  final String title;
  final BorderRadius borderRadius;
  final double height;

  const StoreLocationMap({
    super.key,
    required this.latitude,
    required this.longitude,
    required this.title,
    required this.borderRadius,
    this.height = 390,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: SizedBox(
        height: height,
        width: double.infinity,
        child: _buildPlatformMap(),
      ),
    );
  }

  Widget _buildPlatformMap() {
    if (!kIsWeb && defaultTargetPlatform == TargetPlatform.iOS) {
      return apple_maps.AppleMap(
        initialCameraPosition: apple_maps.CameraPosition(
          target: apple_maps.LatLng(latitude, longitude),
          zoom: 15,
        ),
        myLocationButtonEnabled: false,
        compassEnabled: true,
        annotations: {
          apple_maps.Annotation(
            annotationId: apple_maps.AnnotationId('shop-location'),
            position: apple_maps.LatLng(latitude, longitude),
            infoWindow: apple_maps.InfoWindow(title: title),
          ),
        },
      );
    }

    return google_maps.GoogleMap(
      initialCameraPosition: google_maps.CameraPosition(
        target: google_maps.LatLng(latitude, longitude),
        zoom: 15,
      ),
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      mapToolbarEnabled: true,
      markers: {
        google_maps.Marker(
          markerId: const google_maps.MarkerId('shop-location'),
          position: google_maps.LatLng(latitude, longitude),
          infoWindow: google_maps.InfoWindow(title: title),
        ),
      },
    );
  }
}