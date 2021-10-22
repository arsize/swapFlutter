part of pay_combo_view;

class PayComboItem extends StatelessWidget {
  const PayComboItem({
    Key? key,
    this.itemId,
    this.name,
    this.originalPrice,
    this.price,
    this.num,
  }) : super(key: key);

  final int? itemId;
  final String? name;
  final int? originalPrice;
  final double? price;
  final int? num;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<PayComboController>(
      builder: (_) {
        return InkWell(
          onTap: () {
            _.selectComboItem(itemId);
          },
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.w,
                color: _.selectId == itemId ? Colours.app_yellow : Colors.white,
                style: BorderStyle.solid,
              ),
              borderRadius: ArUtil.border(12),
              color: _.selectId == itemId ? Colours.light_yellow : Colors.white,
            ),
            margin: EdgeInsets.only(bottom: 24.h),
            padding: EdgeInsets.all(32.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      name ?? '',
                      style: TextStyle(
                        fontSize: 36.f,
                        fontWeight: FontWeight.w600,
                        color: Colours.app_main,
                      ),
                    ),
                    SizedBox(width: 16.w),
                    Container(
                      height: 40.h,
                      padding: EdgeInsets.only(left: 14.w, right: 14.w),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 1.w,
                          color: Colours.app_orange_red,
                          style: BorderStyle.solid,
                        ),
                        borderRadius: ArUtil.border(
                          5,
                        ),
                      ),
                      child: (num != null && num! > 0)
                          ? Text(
                              (price! / num!).toDouble().toString() + "元/次",
                              style: TextStyle(
                                fontSize: 20.f,
                                color: Colours.app_orange_red,
                              ),
                            )
                          : (num == -1)
                              ? Text(
                                  '无限次',
                                  style: TextStyle(
                                    fontSize: 20.f,
                                    color: Colours.app_orange_red,
                                  ),
                                )
                              : Text(''),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "￥" + (price ?? 0).toString(),
                      style: TextStyle(
                        fontSize: 36.f,
                        color: Colours.app_orange_red,
                      ),
                    ),
                    Text(
                      "￥" + (originalPrice ?? 0).toString(),
                      style: TextStyle(
                        decoration: TextDecoration.lineThrough,
                        fontSize: 24.f,
                        color: Colours.app_normal_grey,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
