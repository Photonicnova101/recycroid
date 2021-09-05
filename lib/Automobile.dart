import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AutomobileLocations extends StatefulWidget {
  @override
  AutoLocations createState() => AutoLocations();

  
}

class AutoLocations extends State<AutomobileLocations> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(40.726109, -73.873457);

  void _onMapCreated(GoogleMapController controller) {
  mapController = controller;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Recycroid")),
      body:
          GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
          ),
      );
  }
}
