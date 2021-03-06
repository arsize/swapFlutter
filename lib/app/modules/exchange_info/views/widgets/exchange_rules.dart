part of exchange_info_view;

class ExchangeRules extends StatelessWidget {
  const ExchangeRules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ExchangeInfoController>(builder: (_) {
      if (_.exchangeFee?.data?.feeExchangeList != null) {
        if (_.exchangeFee!.data!.feeExchangeList!.length == 1) {
          return Container(
            padding: EdgeInsets.only(
              top: 45.h,
              left: 32.w,
              right: 32.w,
            ),
            height: 328.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.w),
                topRight: Radius.circular(16.w),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "换电须知",
                      style: TextStyle(
                        fontSize: 32.f,
                        color: Colours.app_main,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "下次不再提醒",
                          style: TextStyle(
                            fontSize: 28.f,
                            color: Colours.app_main,
                          ),
                        ),
                        SizedBox(
                          width: 24.w,
                        ),
                        Obx(
                          () => CupertinoSwitch(
                            value: _.switchValue.value,
                            onChanged: _.changeSwitch,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 35.h,
                ),
                Row(
                  children: [
                    Text(
                      "1.单次换电",
                      style: TextStyle(
                        fontSize: 28.f,
                      ),
                    ),
                    Text(
                      _.exchangeFee!.data!.feeExchangeList![0].price
                              .toString() +
                          "元/次",
                      style: TextStyle(
                        fontSize: 32.f,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "，购买换电套餐更实惠；",
                      style: TextStyle(
                        fontSize: 28.f,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Text(
                  "2.若已购买套餐，系统将自动扣除有效套餐内的换电次数以抵扣换电费用。",
                  style: TextStyle(
                    fontSize: 28.f,
                  ),
                )
              ],
            ),
          );
        } else {
          return Container(
            child: Text("套餐收费"),
          );
        }
      } else {
        return Container(
          child: Text("没有设置收费标准"),
        );
      }
    });
  }
}
