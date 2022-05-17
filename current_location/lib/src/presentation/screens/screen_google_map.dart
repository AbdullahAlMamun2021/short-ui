import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  _getLocation() async {
    var location = Location();
    try {
      var currentLocation = await location.getLocation();

      print("locationLatitude: ${currentLocation.latitude}");
      print("locationLongitude: ${currentLocation.longitude}");

      setState(() {}); //rebuild the widget after getting the current location of the user
    } on Exception {}
  }

  @override
  void initState() {
    _getLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          
          children: [
            Container(
              height: 600,

              child: GoogleMap(
                compassEnabled: true,
                mapToolbarEnabled: false,
                buildingsEnabled: true,
                myLocationEnabled: true,
                myLocationButtonEnabled: true,
                trafficEnabled: true,
                mapType: MapType.hybrid,
                indoorViewEnabled: true,
                zoomControlsEnabled: true,
                initialCameraPosition: const CameraPosition(target: LatLng(23.8126385, 90.3990502), zoom: 12),
                onMapCreated: (GoogleMapController controller) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
