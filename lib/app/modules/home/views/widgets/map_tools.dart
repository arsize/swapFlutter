part of home_view;

class MapTools extends StatefulWidget {
  const MapTools({Key? key}) : super(key: key);

  @override
  _MapToolsState createState() => _MapToolsState();
}

class _MapToolsState extends State<MapTools> {
  final HomeController home = Get.find();
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 32.w,
      top: 340.h,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              Get.toNamed("/customer-service");
            },
            child: Container(
              width: 76.w,
              height: 76.w,
              margin: EdgeInsets.only(
                bottom: 30.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.white,
              ),
              alignment: Alignment.center,
              child: Image(
                width: 50.w,
                height: 50.h,
                image: AssetImage("images/home_map_tools1.png"),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              home.resetPosition();
            },
            child: Container(
              width: 76.w,
              height: 76.w,
              margin: EdgeInsets.only(
                bottom: 30.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                color: Colors.white,
              ),
              alignment: Alignment.center,
              child: Image(
                width: 50.w,
                height: 50.h,
                image: AssetImage("images/home_map_tools2.png"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
