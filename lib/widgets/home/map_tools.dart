import 'package:flutter/material.dart';
import 'package:swapapp/utils/adapt.dart';

class MapTools extends StatefulWidget {
  const MapTools({Key? key}) : super(key: key);

  @override
  _MapToolsState createState() => _MapToolsState();
}

class _MapToolsState extends State<MapTools> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: Adapt.width(32),
      top: Adapt.height(340),
      child: Column(
        children: [
          _toolItem("images/home_map_tools1.png"),
          _toolItem("images/home_map_tools2.png"),
        ],
      ),
    );
  }

  Widget _toolItem(str) {
    return Container(
      width: Adapt.width(76),
      height: Adapt.width(76),
      margin: EdgeInsets.only(
        bottom: Adapt.height(30),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.white,
      ),
      alignment: Alignment.center,
      child: Image(
        width: Adapt.width(50),
        height: Adapt.height(50),
        image: AssetImage(str),
      ),
    );
  }
}
