/*
 * @Author: Arsize 
 * @Date: 2021-08-25 11:21:53 
 * @Describe: 首页
 */
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';
import 'package:swapapp/widgets/home/google_map.dart';
import 'package:swapapp/widgets/home/map_tools.dart';
import 'package:swapapp/widgets/home/panel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image(
          width: Adapt.width(332),
          height: Adapt.height(48),
          image: AssetImage("images/home_logo.png"),
        ),
        centerTitle: true,
        leadingWidth: Adapt.width(94),
        leading: Builder(builder: (context) {
          return Padding(
            padding: EdgeInsets.only(left: Adapt.width(32)),
            child: InkWell(
              onTap: () {
                // mycenter
                Navigator.of(context).pushNamed("my");
              },
              child: Image(
                image: AssetImage("images/home_avatar.png"),
              ),
            ),
          );
        }),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: Adapt.width(32)),
            child: InkWell(
              onTap: () {},
              child: Image(
                width: Adapt.width(54),
                height: Adapt.width(54),
                image: AssetImage("images/home_message.png"),
              ),
            ),
          ),
        ],
      ),
      body: SlidingUpPanel(
        margin: EdgeInsets.only(left: 13, right: 13),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        minHeight: Adapt.height(380),
        maxHeight: Adapt.height(560),
        panel: Panel(),
        body: SafeArea(
          child: Stack(
            children: [
              Gmap(),
              MapTools(),
            ],
          ),
        ),
      ),
    );
  }
}
