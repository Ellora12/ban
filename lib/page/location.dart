import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(CustomMarkerInfoWindowScreen());

class CustomMarkerInfoWindowScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<CustomMarkerInfoWindowScreen> {
  late GoogleMapController myMapController;
  String dropdownValue = 'Office';
  String dropdownValu = 'Bangladesh';
  final Set<Marker> _markers = new Set();
  static const LatLng _mainLocation = const LatLng(24.7196, 90.4267);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Maps With Marker'),
              backgroundColor: Colors.blue[900],
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      width: 180,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            //<-- SEE HERE
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            //<-- SEE HERE
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        dropdownColor: Colors.white,
                        value: dropdownValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: <String>['Office', 'Shops']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 20),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      width: 180,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            //<-- SEE HERE
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            //<-- SEE HERE
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                        ),
                        dropdownColor: Colors.white,
                        value: dropdownValu,
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValu = newValue!;
                          });
                        },
                        items: <String>['Bangladesh', 'India', 'Japan']
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(fontSize: 20),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: _mainLocation,
                      zoom: 10.0,
                    ),
                    markers: this.myMarker(),
                    mapType: MapType.normal,
                    onMapCreated: (controller) {
                      setState(() {
                        myMapController = controller;
                      });
                    },
                  ),
                ),
              ],
            )));
  }

  Set<Marker> myMarker() {
    setState(() {
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_mainLocation.toString()),
        position: _mainLocation,
        infoWindow: InfoWindow(
          title: 'Historical City',
          snippet: '5 Star Rating',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });

    return _markers;
  }
}
