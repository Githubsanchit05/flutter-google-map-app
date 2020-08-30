import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

main() {
  runApp(MaterialApp(home: MyGoogleMap()));
}

class MyGoogleMap extends StatefulWidget {
  @override
  _MyGoogleMapState createState() => _MyGoogleMapState();
}

class _MyGoogleMapState extends State<MyGoogleMap> {
  @override
  Widget build(BuildContext context) {
    var cp = CameraPosition(
      target: LatLng(26.899270, 75.740898),
      zoom: 15,
      tilt: 15,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Google Map'),
      ),
      body: GoogleMap(
        initialCameraPosition: cp,
        mapType: MapType.satellite,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: lw,
        child: Icon(Icons.add),
      ),
    );
  }
}

lw() {
  print('hi');
}
