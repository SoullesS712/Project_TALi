import 'package:flutter/material.dart';
import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:location/location.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);
  @override
  State<Home> createState() => Map_State();
}

double distance = 0;
bool checkcar = true;
bool checkcarr = true;
//void sdd; ontap(){}
sort(int c) {
  if (c == 0)
    return checkcar = !checkcar;
  else
    return checkcarr = !checkcarr;
}

class Map_State extends State<Home> {
  final Completer<GoogleMapController> _controller = Completer();
  PolylinePoints polylinePoints = PolylinePoints();

  double calculateDistance(lat1, lon1, lat2, lon2) {
    var p = 0.017453292519943295;
    var a = 0.5 -
        cos((lat2 - lat1) * p) / 2 +
        cos(lat1 * p) * cos(lat2 * p) * (1 - cos((lon2 - lon1) * p)) / 2;
    return 12742 * asin(sqrt(a));
  }

  double totalDistance = 0;

  final Set<Polyline> _polylines = <Polyline>{};
  List<LatLng> polylineCoordinates = [];
  List<LatLng> polylineCoordinates0 = [];

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor currentLicationIcon = BitmapDescriptor.defaultMarker;

  LocationData? currentLocation;

  static const LatLng sourceLocation = LatLng(14.0247, 99.9776);
  static const LatLng destination = LatLng(14.0218, 99.9900);
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
      result.points.forEach(
        (PointLatLng point) {
          polylineCoordinates.add(LatLng(14.0219, 99.9895));

          polylineCoordinates.add(LatLng(14.0220, 99.9857));

          polylineCoordinates.add(LatLng(14.0234, 99.9819));

          polylineCoordinates.add(LatLng(14.0236, 99.9760));

          polylineCoordinates.add(LatLng(14.0210, 99.9759));

          polylineCoordinates.add(LatLng(14.0211, 99.9721));

          polylineCoordinates.add(LatLng(14.0247, 99.9722));

          polylineCoordinates.add(LatLng(14.0247, 99.9760));

          polylineCoordinates.add(LatLng(14.0238, 99.9760));

          polylineCoordinates.add(LatLng(14.0236, 99.9814));

          polylineCoordinates.add(LatLng(14.0221, 99.9857));

          polylineCoordinates.add(LatLng(14.0220, 99.9900));

          polylineCoordinates.add(LatLng(14.0218, 99.9899));
        },
      );
      setState(
        () {
          _polylines.add(
            Polyline(
              startCap: Cap.buttCap,
              endCap: Cap.buttCap,
              jointType: JointType.round,
              geodesic: true,
              polylineId: const PolylineId("line"),
              width: 3,
              color: Color.fromARGB(255, 255, 132, 237),
              points: polylineCoordinates,
            ),
          );
        },
      );
    }
  }

  void getPolyPoints0() async {
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyDN6tGyRHtw8bjXWdFn_QjBMGVkU70T7BQ",
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
      optimizeWaypoints: true,
    );
    if (result.points.isNotEmpty) {
      result.points.forEach(
        (PointLatLng point) {
          polylineCoordinates0.add(LatLng(14.0283, 99.9840));

          polylineCoordinates0.add(LatLng(14.0265, 99.9839));

          polylineCoordinates0.add(LatLng(14.0265, 99.9824));

          polylineCoordinates0.add(LatLng(14.0267, 99.9822));

          polylineCoordinates0.add(LatLng(14.0267, 99.9808));

          polylineCoordinates0.add(LatLng(14.0275, 99.9807));

          polylineCoordinates0.add(LatLng(14.0275, 99.9800));

          polylineCoordinates0.add(LatLng(14.0278, 99.9793));

          polylineCoordinates0.add(LatLng(14.0282, 99.9795));

          polylineCoordinates0.add(LatLng(14.0289, 99.9788));

          polylineCoordinates0.add(LatLng(14.0283, 99.9780));

          polylineCoordinates0.add(LatLng(14.0275, 99.9775));

          polylineCoordinates0.add(LatLng(14.0266, 99.9785));

          polylineCoordinates0.add(LatLng(14.0253, 99.9792));

          polylineCoordinates0.add(LatLng(14.0237, 99.9792));

          polylineCoordinates0.add(LatLng(14.0236, 99.9817));

          polylineCoordinates0.add(LatLng(14.0225, 99.9845));

          polylineCoordinates0.add(LatLng(14.0224, 99.9844));

          polylineCoordinates0.add(LatLng(14.0234, 99.9819));

          polylineCoordinates0.add(LatLng(14.0236, 99.9761));

          polylineCoordinates0.add(LatLng(14.0212, 99.9759));

          polylineCoordinates0.add(LatLng(14.0210, 99.9738));

          polylineCoordinates0.add(LatLng(14.0248, 99.9738));

          polylineCoordinates0.add(LatLng(14.0247, 99.9760));

          polylineCoordinates0.add(LatLng(14.0237, 99.9760));

          polylineCoordinates0.add(LatLng(14.0237, 99.9791));

          polylineCoordinates0.add(LatLng(14.0253, 99.9792));

          polylineCoordinates0.add(LatLng(14.0260, 99.9789));

          polylineCoordinates0.add(LatLng(14.0275, 99.9775));

          polylineCoordinates0.add(LatLng(14.0284, 99.9781));

          polylineCoordinates0.add(LatLng(14.0294, 99.9794));

          polylineCoordinates0.add(LatLng(14.0294, 99.9795));

          polylineCoordinates0.add(LatLng(14.0289, 99.9788));

          polylineCoordinates0.add(LatLng(14.0281, 99.9796));

          polylineCoordinates0.add(LatLng(14.0279, 99.9801));

          polylineCoordinates0.add(LatLng(14.0275, 99.9801));

          polylineCoordinates0.add(LatLng(14.0275, 99.9809));

          polylineCoordinates0.add(LatLng(14.0276, 99.9811));

          polylineCoordinates0.add(LatLng(14.0284, 99.9812));

          polylineCoordinates0.add(LatLng(14.0287, 99.9816));

          polylineCoordinates0.add(LatLng(14.0281, 99.9817));

          polylineCoordinates0.add(LatLng(14.0274, 99.9815));

          polylineCoordinates0.add(LatLng(14.0270, 99.9814));

          polylineCoordinates0.add(LatLng(14.0267, 99.9812));

          polylineCoordinates0.add(LatLng(14.0267, 99.9822));

          polylineCoordinates0.add(LatLng(14.0265, 99.9824));

          polylineCoordinates0.add(LatLng(14.0265, 99.9829));

          polylineCoordinates0.add(LatLng(14.0265, 99.9839));
        },
      );
      setState(
        () {
          _polylines.add(
            Polyline(
              startCap: Cap.buttCap,
              endCap: Cap.buttCap,
              jointType: JointType.round,
              geodesic: true,
              polylineId: const PolylineId("line"),
              width: 3,
              color: Color.fromARGB(255, 255, 181, 62),
              points: polylineCoordinates0,
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
    getPolyPoints0();
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
            padding: EdgeInsets.fromLTRB(0, 10, 2, 2),
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
                      polylines: _polylines,
                      zoomControlsEnabled: true,
                      myLocationEnabled: false,
                      initialCameraPosition: initialCameraPosition!,
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
                            visible: checkcar),
                        Marker(
                            markerId: const MarkerId("destination"),
                            icon: destinationIcon,
                            position: destination,
                            visible: checkcarr),
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
        onTap: (int curentIndex) {
          setState(() {
            sort(curentIndex);
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.directions_bus_sharp),
            label: 'Tali 1',
          ),
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
