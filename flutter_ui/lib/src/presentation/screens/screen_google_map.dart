import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatelessWidget {
  const GoogleMapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
         myLocationButtonEnabled: true,
          tiltGesturesEnabled: true,
          myLocationEnabled: true,
          compassEnabled: true,
          mapType: MapType.hybrid,
          trafficEnabled: true,
          initialCameraPosition:const CameraPosition(
              bearing: 192.8334901395799,
              target: LatLng(37.43296265331129, -122.08832357078792),
              tilt: 59.440717697143555,
              zoom: 19.151926040649414),
          onMapCreated: (GoogleMapController controller) {},
        ),
      ),
    );
  }
}
