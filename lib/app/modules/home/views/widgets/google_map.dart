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
    return GetBuilder<HomeController>(builder: (_) {
      return GoogleMap(
        myLocationButtonEnabled: true,
        initialCameraPosition: CameraPosition(
          target: _.mapCenter,
          zoom: 12,
        ),
        onMapCreated: _.onMapCreated,
        onCameraMove: _.onCameraMove,
        onTap: _.onMapTap,
        markers: _.markers,
      );
    });
  }
}
