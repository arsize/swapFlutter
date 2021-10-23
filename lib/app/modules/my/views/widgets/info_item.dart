part of my_view;

class InfoItem extends StatelessWidget {
  const InfoItem({Key? key, required this.str}) : super(key: key);
  final String str;

  @override
  Widget build(BuildContext context) {
    final MyController my = Get.find();
    final StoreController store = Get.find();
    return GetBuilder<MyController>(builder: (_) {
      return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Obx(
          () => store.isLogin.value
              ? Text(
                  str == "钱包余额(元)"
                      ? my.usr().data?.walletMoney.toString() ?? '0.0'
                      : str == "本月换电(次)"
                          ? my.usr().data?.currentMonthOrderCount.toString() ??
                              '0'
                          : my.usr().data?.totalSurplusNum?.toString() ?? '0',
                  style: TextStyle(
                    fontSize: 36.f,
                    fontWeight: FontWeight.w500,
                    color: Colours.app_main,
                  ),
                )
              : Text(
                  '--',
                  style: TextStyle(
                    fontSize: 36.f,
                    fontWeight: FontWeight.w500,
                    color: Colours.app_main,
                  ),
                ),
        ),
        SizedBox(
          height: 12.h,
        ),
        Text(
          str,
          style: TextStyle(
            fontSize: 24.f,
            color: Colours.app_font_grey,
          ),
        )
      ]);
    });
  }
}
