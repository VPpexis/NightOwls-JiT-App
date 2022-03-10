import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late GoogleMapController mapController;
  final Location _location = Location();
  final LatLng _center = const LatLng(45.521563, -22.677433);

  @override
  void initState() {
    super.initState();
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    _location.onLocationChanged.listen((l) {
      mapController.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
              target: LatLng(l.latitude!.toDouble(), l.longitude!.toDouble()),
              zoom: 15),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Scaffold(
              body: GoogleMap(
                onMapCreated: _onMapCreated,
                initialCameraPosition: CameraPosition(
                  target: _center,
                  zoom: 11.0,
                ),
                myLocationButtonEnabled: true,
                myLocationEnabled: true,
              ),
            ),
            Container(
              height: 150,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: Colors.black,
                ),
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 15,
                  ),
                  SizedBox(
                    height: 50,
                    width: 350,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('assets/searchicon.png'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        SizedBox(
                          width: 275,
                          child: Material(
                            elevation: 10.0,
                            shadowColor: Colors.black,
                            child: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Type in your destination',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 35,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.green[300],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: const Text('Mapua - TAFT'),
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.green[300],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: const Text('MS - MOA'),
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 75,
                        decoration: BoxDecoration(
                          color: Colors.green[300],
                          borderRadius: const BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          child: const Text('SM - MOA'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.airplane_ticket,
                color: Colors.white,
              ),
              label: 'business',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.qr_code,
                  color: Colors.white,
                ),
                label: 'Tickets'),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_rental, color: Colors.white),
                label: 'Jeep'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle, color: Colors.white),
                label: 'Account'),
          ],
        ),
      ),
    );
  }
}
