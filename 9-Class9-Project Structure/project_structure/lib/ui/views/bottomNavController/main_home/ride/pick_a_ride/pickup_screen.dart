// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/material.dart';

import '../../../../../styles/styles.dart';
import '../../../../../widgets/app_bottom_modals.dart';
import '../../../../../widgets/app_dialog.dart';

class PickUpScreen extends StatefulWidget {
  @override
  State<PickUpScreen> createState() => _PickUpScreenState();
}

class _PickUpScreenState extends State<PickUpScreen> {
  pickup() {
    return showModalBottomSheet(
      shape: shape,
      context: context,
      builder: (context) => pickUpModal(
        () {
          Navigator.of(context).pop();
          dropOffLocation();
        },
      ),
    );
  }

  dropOffLocation() {
    return showModalBottomSheet(
        shape: shape,
        isScrollControlled: true,
        context: context,
        builder: (context) => dropoffLocationModal(
              () {
                Navigator.of(context).pop();
                confirmDropOff();
              },
            ));
  }

  confirmDropOff() {
    return showModalBottomSheet(
        shape: shape,
        context: context,
        builder: (context) => confirmDropoffModal(
              () {
                Navigator.of(context).pop();
                confirmPickUp();
              },
            ));
  }

  confirmPickUp() {
    showModalBottomSheet(
        shape: shape,
        isScrollControlled: true,
        context: context,
        builder: (context) => confirmPickupModal(
              () {
                Navigator.of(context).pop();
                selectPod();
              },
            ));
  }

  selectPod() {
    return showModalBottomSheet(
        shape: shape,
        context: context,
        builder: (context) => selectPodModal(
              () {
                Navigator.of(context).pop();
                covidSafety();
              },
              context,
            ));
  }

  covidSafety() {
    return showModalBottomSheet(
        shape: shape,
        context: context,
        builder: (context) => covidSafetyModal(
              () {
                Navigator.of(context).pop();
                findingARide();
              },
            ));
  }

  findingARide() {
    showModalBottomSheet(
        shape: shape,
        isScrollControlled: true,
        context: context,
        builder: (context) => findingARideModal(
              () {
                Navigator.of(context).pop();
                cancelRideBeforeBooked();
              },
            ));
  }

  cancelRideBeforeBooked() {
    return showModalBottomSheet(
        shape: shape,
        context: context,
        builder: (context) => cancelRideBeforeBookedModal(
              () {
                Navigator.of(context).pop();
                cancelRideAfter5minBooked();
              },
            ));
  }

  cancelRideAfter5minBooked() {
    return showModalBottomSheet(
        shape: shape,
        context: context,
        builder: (context) => cancelRideAfter5minBookedModal(
              () {
                Navigator.of(context).pop();
                showDialog(
                    context: context,
                    builder: (BuildContext context) => rideDialog(context));
              },
            ));
  }

  Completer<GoogleMapController> controller = Completer();

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  _onMapCreated(GoogleMapController controller) {
    controller.setMapStyle(Utils.mapStyle);
  }

  @override
  Widget build(BuildContext context) {
    Timer(
      Duration(seconds: 1),
      () => pickup(),
    );

    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: _kGooglePlex,
        onMapCreated: _onMapCreated,
      ),
    );
  }
}

class Utils {
  static String mapStyle = '''
[
  {
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "elementType": "labels.icon",
    "stylers": [
      {
        "visibility": "off"
      }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "elementType": "labels.text.stroke",
    "stylers": [
      {
        "color": "#f5f5f5"
      }
    ]
  },
  {
    "featureType": "administrative.land_parcel",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#bdbdbd"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "poi",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "poi.park",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "road",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#ffffff"
      }
    ]
  },
  {
    "featureType": "road.arterial",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#757575"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#dadada"
      }
    ]
  },
  {
    "featureType": "road.highway",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#616161"
      }
    ]
  },
  {
    "featureType": "road.local",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  },
  {
    "featureType": "transit.line",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#e5e5e5"
      }
    ]
  },
  {
    "featureType": "transit.station",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#eeeeee"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "geometry",
    "stylers": [
      {
        "color": "#c9c9c9"
      }
    ]
  },
  {
    "featureType": "water",
    "elementType": "labels.text.fill",
    "stylers": [
      {
        "color": "#9e9e9e"
      }
    ]
  }
]

 ''';
}