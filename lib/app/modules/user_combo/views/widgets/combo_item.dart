part of user_combo_view;

class ProductListItem extends StatelessWidget {
  const ProductListItem({
    Key? key,
    this.frequencyCardType,
    this.status,
    this.frequencyCardName,
    this.surplusNum,
    this.takeEffectTime,
    this.loseEffectTime,
  }) : super(key: key);

  final int? frequencyCardType;
  final int? status;
  final String? frequencyCardName;
  final int? surplusNum;
  final int? takeEffectTime;
  final int? loseEffectTime;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          Container(
            height: 220.h,
            margin: EdgeInsets.only(top: 32.h),
            decoration: BoxDecoration(
              borderRadius: ArUtil.border(15),
              color: status == 1 ? Color(0xFFFAD046) : Colors.white,
            ),
            padding: EdgeInsets.all(
              32.w,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      frequencyCardName ?? '',
                      style: TextStyle(
                        fontSize: 36.f,
                        color: Colours.app_main,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      "剩$surplusNum次",
                      style: TextStyle(
                        fontSize: 36.f,
                        color: Colours.app_main,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 12.h),
                Text(
                  "有效期：${formateTime(takeEffectTime, second: false)}-${formateTime(loseEffectTime, second: false)}",
                  style: TextStyle(
                    fontSize: 24.f,
                    color: Colours.app_main.withOpacity(0.8),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 23.w,
            bottom: 0,
            child: status == 1
                ? Image(
                    width: 150.w,
                    height: 101.w,
                    image: AssetImage("images/my_combo_imyellow.png"),
                  )
                : Image(
                    width: 150.w,
                    height: 101.w,
                    image: AssetImage("images/my_combo_imnone.png"),
                  ),
          )
        ],
      ),
    );
  }
}
