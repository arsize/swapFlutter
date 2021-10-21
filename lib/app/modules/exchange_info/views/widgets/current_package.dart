part of exchange_info_view;

class CurrentPackage extends StatelessWidget {
  const CurrentPackage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Get.width,
      padding: EdgeInsets.all(32.w),
      child: GetBuilder<StoreController>(
        builder: (_) {
          print(_.cabinetDetail.data?.userFrequencyCardRecord);
          return _.cabinetDetail.data?.userFrequencyCardRecord.id != null
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "当前换电套餐",
                      style: TextStyle(
                        fontSize: 32.f,
                        color: Colours.app_main,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                      width: 686.w,
                      height: 164.h,
                      padding: EdgeInsets.all(32.w),
                      decoration: BoxDecoration(
                        color: Colours.app_exchange,
                        borderRadius: ArUtil.border(12.w),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "剩余4次",
                                style: TextStyle(
                                  fontSize: 30.f,
                                  color: Colours.app_over_yellow,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 3.h,
                              ),
                              Text(
                                "有效期：2020.04.01",
                                style: TextStyle(
                                  fontSize: 24.f,
                                  color: Colours.app_normal_grey,
                                ),
                              ),
                            ],
                          ),
                          Image(
                            width: 100.w,
                            height: 100.h,
                            image: AssetImage("images/exchange_active.png"),
                          )
                        ],
                      ),
                    )
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "换电套餐",
                      style: TextStyle(
                        fontSize: 32.f,
                        color: Colours.app_main,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed("/pay-package-list");
                      },
                      child: Image(
                        width: 686.w,
                        image: AssetImage(
                            "images/userFrequencyCardRecord_banner.png"),
                      ),
                    )
                  ],
                );
        },
      ),
    );
  }
}
