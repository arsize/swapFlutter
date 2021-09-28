part of exchange_info_view;

class ExchangeRules extends StatelessWidget {
  const ExchangeRules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ExchangeInfoController exchange = Get.find();
    return Container(
      padding: EdgeInsets.only(
        top: 45.h,
        left: 32.w,
        right: 32.w,
      ),
      height: Adapt.height(328),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            Adapt.width(16),
          ),
          topRight: Radius.circular(
            Adapt.width(16),
          ),
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
                  fontSize: Adapt.font(32),
                  color: Colours.app_main,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Row(
                children: [
                  Text(
                    "下次不再提醒",
                    style: TextStyle(
                      fontSize: Adapt.font(28),
                      color: Colours.app_main,
                    ),
                  ),
                  SizedBox(
                    width: Adapt.width(24),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: Adapt.height(35),
          ),
          Row(
            children: [
              Text(
                "1.单次换电",
                style: TextStyle(
                  fontSize: Adapt.font(28),
                ),
              ),
              Text(
                "5元/次",
                style: TextStyle(
                  fontSize: Adapt.font(32),
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "，购买换电套餐更实惠；",
                style: TextStyle(
                  fontSize: Adapt.font(28),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Adapt.height(10),
          ),
          Text(
            "2.若已购买套餐，系统将自动扣除有效套餐内的换电次数以抵扣换电费用。",
            style: TextStyle(
              fontSize: Adapt.font(28),
            ),
          )
        ],
      ),
    );
  }
}
