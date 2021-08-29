import 'package:flutter/material.dart';
import 'package:swapapp/themes/colors.dart';
import 'package:swapapp/utils/adapt.dart';

class MenuPanel extends StatefulWidget {
  final String titleName;
  final List<Widget> menuList;
  final bool warp;
  const MenuPanel({
    Key? key,
    required this.warp,
    required this.titleName,
    required this.menuList,
  }) : super(key: key);

  @override
  _MenuPanelState createState() => _MenuPanelState();
}

class _MenuPanelState extends State<MenuPanel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(
          left: Adapt.width(32),
          right: Adapt.width(32),
        ),
        child: Container(
          padding: EdgeInsets.all(Adapt.width(32)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
            color: Colors.white,
          ),
          width: Adapt.width(686),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.titleName,
                style: TextStyle(
                  fontSize: Adapt.font(32),
                  color: Colours.app_main,
                  fontWeight: FontWeight.w500,
                ),
              ),
              widget.warp
                  ? Wrap(
                      spacing: Adapt.width(36),
                      runSpacing: Adapt.height(10),
                      alignment: WrapAlignment.start,
                      children: widget.menuList,
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: widget.menuList,
                    )
            ],
          ),
        ),
      ),
    );
  }
}
