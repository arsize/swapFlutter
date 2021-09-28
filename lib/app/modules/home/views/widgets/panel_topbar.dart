part of home_view;

class PlanelTopBar extends StatefulWidget {
  final LayerLink link;
  final Offset offset;
  const PlanelTopBar({
    Key? key,
    required this.link,
    required this.offset,
  }) : super(key: key);

  @override
  _PlanelTopBarState createState() => _PlanelTopBarState();
}

class _PlanelTopBarState extends State<PlanelTopBar> {
  @override
  Widget build(BuildContext context) {
    return CompositedTransformFollower(
      offset: widget.offset,
      link: widget.link,
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(
          left: 32.w,
          right: 32.w,
        ),
        decoration: BoxDecoration(
          borderRadius: ArUtil.border(15),
          color: Colours.app_yellow.withOpacity(0.5),
        ),
        child: Row(
          children: [
            Text(
              "你已提交换电订单，请尽快完成换电操作",
              style: TextStyle(
                fontSize: 23.f,
                color: Colours.app_main,
              ),
            ),
            Icon(Icons.arrow_right_sharp)
          ],
        ),
      ),
    );
  }
}
