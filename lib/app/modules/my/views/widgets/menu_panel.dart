part of my_view;

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
  final MyController ctrl = Get.find();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(
          left: 32.w,
          right: 32.w,
        ),
        child: Container(
          padding: EdgeInsets.all(32.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(6),
            ),
            color: Colors.white,
          ),
          width: 686.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.titleName,
                style: TextStyle(
                  fontSize: 32.f,
                  color: Colours.app_main,
                  fontWeight: FontWeight.w500,
                ),
              ),
              widget.warp
                  ? Wrap(
                      spacing: 36.w,
                      runSpacing: 10.h,
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
