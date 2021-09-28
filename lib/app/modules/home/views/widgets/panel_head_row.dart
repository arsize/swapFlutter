part of home_view;

class PanelHeadRow extends StatelessWidget {
  const PanelHeadRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController ctrl = Get.find();
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              InkWell(
                child: Container(
                  width: 170.w,
                  child: PanelHeadText(str: '换电'),
                  margin: EdgeInsets.only(
                    left: 14,
                  ),
                ),
                onTap: () => {
                  ctrl.changeMenu("换电"),
                },
              ),
              InkWell(
                child: Container(
                  width: 90.w,
                  child: PanelHeadText(str: '商城'),
                ),
                onTap: () => {
                  ctrl.changeMenu("商城"),
                  Get.toNamed("/shop"),
                },
              ),
            ],
          ),
          Image(
            image: AssetImage("images/home_panel_right.png"),
            width: 284.w,
          )
        ],
      ),
    );
  }
}
