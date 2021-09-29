/*
 * @Author: Arsize 
 * @Date: 2021-08-24 14:42:42 
 * @Describe: Google地图组件
 */
part of home_view;

class Gmap extends StatelessWidget {
  const Gmap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController home = Get.find();
    return GoogleMap(
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      initialCameraPosition: CameraPosition(
        target: home.mapCenter,
        zoom: 11.5,
      ),
      onMapCreated: home.createMarers,
      markers: home.markers,
    );
  }
}
