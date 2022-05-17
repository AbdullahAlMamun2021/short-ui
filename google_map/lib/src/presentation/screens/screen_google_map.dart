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
      body: SafeArea(
        child: GoogleMap(

          buildingsEnabled: true,
          myLocationEnabled: true,
          myLocationButtonEnabled: true,
          padding: const EdgeInsets.all(10),
          trafficEnabled: true,
          mapType: MapType.hybrid,
          initialCameraPosition: const CameraPosition(
            target: LatLng(37.43296265331129, -122.08832357078792),
            zoom: 15,
          ),
          onMapCreated: (GoogleMapController controller) {},
        ),
      ),
    );
  }
}
