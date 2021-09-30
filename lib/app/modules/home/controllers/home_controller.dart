import 'package:location/location.dart';
import 'package:swapapp/app/common/methods/check_pixel_ratio.dart';
import 'package:swapapp/app/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:swapapp/app/store/store.dart';

class HomeController extends GetxController {
  StoreController store = Get.find();
  // 响应式变量

  // 普通变量
  String selectMenu = "换电";
  final LayerLink layerLink = LayerLink();

  @override
  void onInit() {
    super.onInit();
    setMarkerImage();
  }

//---------------------------------------------------------------
  changeMenu(str) {
    selectMenu = str;
    update();
  }

// -------------------------地图相关-------------------------------------
  LatLng mapCenter = LatLng(22.582657328817298, 113.86058293363483);
  Set<Marker> markers = {};
  late BitmapDescriptor _markerIcon;

  void setMarkerImage() async {
    var _imgPath = "images/map_markers/${checkRatio()}/map_marker_01.png";
    _markerIcon =
        await BitmapDescriptor.fromAssetImage(ImageConfiguration(), _imgPath);
  }

  void getLocation() async {
    Location location = Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();

    mapCenter = LatLng(_locationData.latitude!, _locationData.latitude!);
    update();
  }

  void onMapCreated(GoogleMapController googleMapController) {
    markers.add(
      Marker(
        markerId: MarkerId("id_1"),
        position: mapCenter,
        icon: _markerIcon,
      ),
    );
    update();
  }
}
