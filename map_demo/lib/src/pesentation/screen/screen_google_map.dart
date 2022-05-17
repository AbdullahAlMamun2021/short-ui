import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({Key? key}) : super(key: key);

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        buildingsEnabled: true,
        myLocationEnabled: true,
        myLocationButtonEnabled: true,
        padding: const EdgeInsets.all(10),
        mapType: MapType.hybrid,
        initialCameraPosition:const CameraPosition(
            bearing: 192.8334901395799,
            target: LatLng(37.43296265331129, -122.08832357078792),
            tilt: 59.440717697143555,
            zoom: 19.151926040649414),
        onMapCreated: (GoogleMapController controller) {},
      ),
    );
  }
}
