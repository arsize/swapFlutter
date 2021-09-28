part of my_view;

class InfoItem extends StatelessWidget {
  const InfoItem({Key? key, required this.str}) : super(key: key);
  final String str;

  @override
  Widget build(BuildContext context) {
    final MyController my = Get.find();
    return GetBuilder<MyController>(builder: (_) {
      return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Obx(
          () => Text(
            str == "钱包余额(元)"
                ? my.walletMoney.value.toString()
                : str == "本月换电(次)"
                    ? my.currentMonthOrderCount.value.toString()
                    : my.totalSurplusNum.value.toString(),
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
