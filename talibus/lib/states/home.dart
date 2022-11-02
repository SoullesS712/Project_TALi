import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:location/location.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);
  @override
  State<Home> createState() => Map_State();
}

class Map_State extends State<Home> {
  final Completer<GoogleMapController> _controller = Completer();
  PolylinePoints polylinePoints = PolylinePoints();

  final Set<Polyline> _polylines = <Polyline>{};
  List<LatLng> polylineCoordinates = [];

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor currentLicationIcon = BitmapDescriptor.defaultMarker;

  LocationData? currentLocation;

  static const LatLng sourceLocation = LatLng(14.026226, 99.982615);
  static const LatLng destination = LatLng(14.0242, 99.9781);
  Location location = Location();

  CameraPosition? initialCameraPosition;
  void initialLocation() async {
    location.getLocation().then(
      (currentLoc) {
        currentLocation = currentLoc;
        initialCameraPosition = CameraPosition(
          target: LatLng(currentLoc.latitude!, currentLoc.longitude!),
          zoom: 15.5,
        );
        location.onLocationChanged.listen((LocationData newLoc) async {
          currentLocation = newLoc;

          final GoogleMapController controller = await _controller.future;
        });
      },
    );
  }

  void getPolyPoints() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyDN6tGyRHtw8bjXWdFn_QjBMGVkU70T7BQ",
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
      optimizeWaypoints: true,
    );
    if (result.points.isNotEmpty) {
      // ignore: avoid_function_literals_in_foreach_calls
      result.points.forEach(
        (PointLatLng point) {
          polylineCoordinates.add(LatLng(point.latitude, point.longitude));
        },
      );
      setState(
        () {
          _polylines.add(
            Polyline(
              startCap: Cap.roundCap,
              endCap: Cap.roundCap,
              jointType: JointType.round,
              geodesic: true,
              polylineId: const PolylineId("line"),
              width: 6,
              color: Color.fromARGB(255, 49, 49, 49),
              points: polylineCoordinates,
            ),
          );
        },
      );
    }
  }

  void setSourceAndDestinationIcons() async {
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(size: Size(24, 24)),
            'images/Pin_source.png')
        .then(
      (value) {
        sourceIcon = value;
      },
    );
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(), 'images/Pin_destination.png')
        .then(
      (value) {
        destinationIcon = value;
      },
    );
    BitmapDescriptor.fromAssetImage(
            const ImageConfiguration(), 'images/Badge.png')
        .then(
      (value) {
        currentLicationIcon = value;
      },
    );
  }

  @override
  void initState() {
    initialLocation();
    getPolyPoints();
    setSourceAndDestinationIcons();
    super.initState();
  }

  int curentIndex = 1;
  @override
  Widget build(BuildContext context) {
    final drawerItems = ListView(
      children: [
        // ignore: prefer_const_constructors
        DrawerHeader(
          child: const Padding(
            padding: EdgeInsets.fromLTRB(2, 2, 2, 2),
            child: Text("Menu"),
          ),
        ),
        ListTile(
          title: const Text("Notification"),
          onTap: () {
            Navigator.pushNamed(context, "noti");
          },
        ),
        ListTile(
          title: const Text("Setting"),
          onTap: () {
            Navigator.pushNamed(context, "setting");
          },
        ),
        ListTile(
          title: const Text("How to Use"),
          onTap: () {
            Navigator.pushNamed(context, "howtouse");
          },
        ),
      ],
    );

    var container = Container(
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF54436B), Color(0xFF50CB93), Color(0xFFACFFAD)],
          begin: AlignmentDirectional(1, -0.44),
          end: AlignmentDirectional(-1, 0.44),
        ),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            drawerItems;
          },
          icon: const Icon(Icons.arrow_forward_ios),
          color: Color(0xFF54436B),
        ),
        centerTitle: true,
        title: const Text(
          'Talibus',
          style: TextStyle(color: Color.fromARGB(255, 63, 63, 63)),
        ),
        actions: [
          IconButton(
            icon: Image.asset('images/roadicon.png'),
            padding: EdgeInsets.all(10),
            onPressed: () {
              Navigator.pushNamed(context, "roadmap");
            },
            color: Color(0xFF54436B),
          ),
        ],
        flexibleSpace: container,
      ),
      body: currentLocation == null
          ? const Center(child: Text("Loading..."))
          : Column(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(32),
                      topRight: Radius.circular(32),
                    ),
                    child: GoogleMap(
                      zoomControlsEnabled: true,
                      initialCameraPosition: initialCameraPosition!,
                      polylines: _polylines,
                      markers: {
                        Marker(
                          markerId: const MarkerId("currentLocation"),
                          icon: currentLicationIcon,
                          position: LatLng(currentLocation!.latitude!,
                              currentLocation!.longitude!),
                        ),
                        Marker(
                          markerId: const MarkerId("source"),
                          icon: sourceIcon,
                          position: sourceLocation,
                        ),
                        Marker(
                          markerId: const MarkerId("destination"),
                          icon: destinationIcon,
                          position: destination,
                        ),
                      },
                      onMapCreated: (GoogleMapController controller) {
                        _controller.complete(controller);
                      },
                    ),
                  ),
                ),
              ],
            ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: curentIndex,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        selectedItemColor: Colors.orange,
        unselectedItemColor: Color.fromARGB(255, 255, 99, 221),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_bus_sharp), label: 'Tali 1'),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_bus_sharp), label: 'Tali 2')
        ],
      ),
      drawer: Drawer(child: drawerItems),
    );
  }

  List<LatLng> map1 = [
    const LatLng(14.0218, 99.9900),
    const LatLng(14.0219, 99.9892),
    const LatLng(14.0234, 99.9818),
  ];
}
