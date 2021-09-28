part of serving_view;

class ServingPanel extends StatelessWidget {
  const ServingPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.w),
      width: 686.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: ArUtil.border(16),
        boxShadow: [
          BoxShadow(
            color: Colours.app_E1_grey,
            offset: Offset(0.0, 2.0),
            blurRadius: 2,
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          ServingPanelLine(title: "换电信息"),
          Column(
            children: [
              SizedBox(height: 63.h),
              Text(
                "换电进行中",
                style: TextStyle(
                  color: Colours.app_title_yellow,
                  fontSize: 40.f,
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                "请在120s内完成换电操作",
                style: TextStyle(
                  color: Colours.app_normal_grey,
                  fontSize: 28.f,
                ),
              ),
              SizedBox(height: 60.h)
            ],
          ),
          ServingPanelLine(title: "订单信息"),
          SizedBox(
            height: 32.h,
          ),
          BoxInfo(),
        ],
      ),
    );
  }
}
