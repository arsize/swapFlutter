/*
 * @Author: Arsize 
 * @Date: 2021-08-24 14:42:42 
 * @Describe: Google地图组件
 */
part of home_view;

class Gmap extends StatefulWidget {
  const Gmap({Key? key}) : super(key: key);

  @override
  _GmapState createState() => _GmapState();
}

class _GmapState extends State<Gmap> {
  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      initialCameraPosition: CameraPosition(
        target: LatLng(37.7786, -122.4375),
        zoom: 11.5,
      ),
    );
  }
}
