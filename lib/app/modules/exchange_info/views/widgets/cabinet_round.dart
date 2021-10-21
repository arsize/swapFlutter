part of exchange_info_view;

class CabinetRound extends StatelessWidget {
  const CabinetRound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Get.width,
      padding: EdgeInsets.all(32.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "提示：开始换电后，将会打开空仓，请保持安全距离",
            style: TextStyle(
              fontSize: 28.f,
              color: Colours.app_normal_grey,
            ),
          ),
          SizedBox(
            height: 45.h,
          ),
          Container(
            width: 390.w,
            height: 390.w,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colours.app_green,
                width: 7.w,
              ),
              borderRadius: ArUtil.border(390),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GetBuilder<StoreController>(builder: (_) {
                    return Text(
                      _.canUseBattery().toString(),
                      style: TextStyle(
                        fontSize: 162.f,
                        fontWeight: FontWeight.w700,
                        color: Colours.app_green,
                      ),
                    );
                  }),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    "可换电（颗）",
                    style: TextStyle(
                      fontSize: 32.f,
                      color: Colours.app_green,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
