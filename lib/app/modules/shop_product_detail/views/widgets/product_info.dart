part of shop_product_detail;

class ProductInfo extends StatelessWidget {
  const ProductInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Text(
            "极客·King新国标电动车  重新定义新国标重新定义新国标重新定义新国标",
            style: TextStyle(
              color: Colours.app_main,
              fontWeight: FontWeight.w600,
              fontSize: 30.f,
            ),
          ),
          SizedBox(height: 20.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "2999元",
                    style: TextStyle(
                      color: Colours.app_orange_red,
                      fontWeight: FontWeight.w600,
                      fontSize: 28.f,
                    ),
                  ),
                  SizedBox(width: 24.w),
                  Text(
                    "3299元",
                    style: TextStyle(
                      fontSize: 22.f,
                      decoration: TextDecoration.lineThrough,
                      color: Colours.app_normal_grey,
                    ),
                  )
                ],
              ),
              Container(
                child: Text(
                  "库存：200台",
                  style: TextStyle(
                    fontSize: 24.f,
                    fontWeight: FontWeight.w600,
                    color: Colours.app_normal_grey,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 30.h),
          Container(
            width: 686.w,
            height: 1.w,
            color: Colours.app_lignt_grey,
          ),
          SizedBox(height: 30.h),
          Row(
            children: [
              Text(
                "配送方式：",
                style: TextStyle(color: Colours.app_main, fontSize: 28.f),
              ),
              Text(
                "快递免邮",
                style:
                    TextStyle(color: Colours.app_normal_grey, fontSize: 28.f),
              ),
            ],
          ),
          SizedBox(height: 30.h),
          Container(
            width: 686.w,
            height: 1.w,
            color: Colours.app_lignt_grey,
          ),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    builder: (BuildContext context) {
                      return Safeguard();
                    },
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "保障：",
                      style: TextStyle(color: Colours.app_main, fontSize: 28.f),
                    ),
                    Text(
                      "假一赔四、付款后48小时内发货、坏单包赔",
                      style: TextStyle(
                          color: Colours.app_normal_grey, fontSize: 28.f),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right_outlined,
                color: Colours.app_icon_right,
              )
            ],
          ),
          SizedBox(height: 30.h),
          Container(
            width: 686.w,
            height: 1.w,
            color: Colours.app_lignt_grey,
          ),
          SizedBox(height: 30.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    builder: (BuildContext context) {
                      return Parameter();
                    },
                  );
                },
                child: Row(
                  children: [
                    Text(
                      "参数：",
                      style: TextStyle(color: Colours.app_main, fontSize: 28.f),
                    ),
                    Container(
                      width: 550.w,
                      child: Text(
                        "品牌 配置...",
                        style: TextStyle(
                            color: Colours.app_normal_grey, fontSize: 28.f),
                      ),
                    ),
                  ],
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right_outlined,
                color: Colours.app_icon_right,
              )
            ],
          ),
          SizedBox(height: 32.h),
          Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  width: 42.w,
                  height: 18.h,
                  image: AssetImage("images/shop_detail_left.png"),
                ),
                SizedBox(width: 24.w),
                Text(
                  "商品详情",
                  style: TextStyle(
                    color: Colours.app_main,
                    fontSize: 32.f,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(width: 24.w),
                Image(
                  width: 42.w,
                  height: 18.h,
                  image: AssetImage("images/shop_detail_right.png"),
                ),
              ],
            ),
          ),
          SizedBox(height: 32.h),
          Row(
            children: [
              Text(
                "更方便：",
                style: TextStyle(
                  fontSize: 24.f,
                  color: Colours.app_main,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "不用自己充电",
                style: TextStyle(fontSize: 24.f, color: Colours.app_font_grey6),
              )
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Text(
                "更爽：",
                style: TextStyle(
                  fontSize: 24.f,
                  color: Colours.app_main,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "无限续航，就近换电柜更换电池，立刻恢复满电状态",
                style: TextStyle(fontSize: 24.f, color: Colours.app_font_grey6),
              )
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Text(
                "更安全：",
                style: TextStyle(
                  fontSize: 24.f,
                  color: Colours.app_main,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "电池采用最先进的锂电技术，防撞、防水、坚固安全",
                style: TextStyle(fontSize: 24.f, color: Colours.app_font_grey6),
              )
            ],
          ),
          SizedBox(height: 8.h),
          Row(
            children: [
              Text(
                "更省钱：",
                style: TextStyle(
                  fontSize: 24.f,
                  color: Colours.app_main,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                "电池终身使用，不用每年购买新电池，不用交电费",
                style: TextStyle(fontSize: 24.f, color: Colours.app_font_grey6),
              )
            ],
          ),
          SizedBox(height: 32.h),
          Image(
            width: 686.w,
            image: AssetImage("images/product_bg_1.png"),
          ),
          Image(
            width: 686.w,
            image: AssetImage("images/product_bg_2.png"),
          )
        ],
      ),
    );
  }
}
