/*
 * @Author: Arsize 
 * @Date: 2021-10-23 11:04:30 
 * @Describe: 充值金额列表
 */

part of put_money_view;

class MoneyList extends StatelessWidget {
  const MoneyList({Key? key, required this.money}) : super(key: key);
  final String money;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PutMoneyController>(builder: (_) {
      return InkWell(
        onTap: () {
          _.selectMoneyFn(money);
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.w,
              style: BorderStyle.solid,
              color: Colours.app_normal_grey,
            ),
            borderRadius: ArUtil.border(10),
            color: _.selectMoney == money
                ? Colours.app_yellow.withOpacity(0.6)
                : Colors.white,
          ),
          alignment: Alignment.center,
          height: 168.h,
          width: 210.w,
          child: Text(
            money + "元",
            style: TextStyle(
              fontSize: 34.f,
              color: Colours.app_main,
            ),
          ),
        ),
      );
    });
  }
}
