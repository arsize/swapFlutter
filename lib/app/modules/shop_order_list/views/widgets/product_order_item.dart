part of shop_order_list_view;

class ProductOrderItem extends StatelessWidget {
  const ProductOrderItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 32.w),
      width: Get.width,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(32.w),
            child: Column(
              children: [
                Text(
                  "交易成功",
                  style: TextStyle(
                    fontSize: 24.f,
                    color: Colours.app_over_yellow,
                  ),
                ),
                SizedBox(height: 19.h),
                Row(
                  children: [
                    Image(
                      width: 160.w,
                      height: 160.w,
                      image: AssetImage("images/my_car01.png"),
                    ),
                    SizedBox(width: 16.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "极克·KING（新国标电动车）极克…",
                            style: TextStyle(
                              fontSize: 32.f,
                              color: Colours.app_main,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 14.h),
                          Text(
                            "规格：经典黄",
                            style: TextStyle(
                              fontSize: 24.f,
                              color: Colours.app_normal_grey,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            "¥2799.00x1",
                            style: TextStyle(
                              fontSize: 24.f,
                              color: Colours.app_normal_grey,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "共1件商品",
                                style: TextStyle(
                                  fontSize: 24.f,
                                  color: Colours.app_main,
                                ),
                              ),
                              Text(
                                "合计：2999元",
                                style: TextStyle(
                                  fontSize: 24.f,
                                  color: Colours.app_main,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: Get.width,
            height: 1.h,
            color: Colours.app_light_grey,
          ),
          Container(
            padding: EdgeInsets.only(
              top: 18.h,
              bottom: 18.h,
              left: 32.w,
              right: 32.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // InkWell(
                //   onTap: () {},
                //   child: Container(
                //     alignment: Alignment.center,
                //     width: 176.w,
                //     height: 64.h,
                //     decoration: BoxDecoration(
                //       borderRadius: ArUtil.border(10),
                //       color: Colours.app_main,
                //     ),
                //     child: Text(
                //       "去支付",
                //       style: TextStyle(
                //         fontSize: 28.f,
                //         color: Colours.app_yellow,
                //       ),
                //     ),
                //   ),
                // ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    alignment: Alignment.center,
                    width: 176.w,
                    height: 64.h,
                    decoration: BoxDecoration(
                      borderRadius: ArUtil.border(10),
                      color: Colours.app_F1_grey,
                    ),
                    child: Text(
                      "再次购买",
                      style: TextStyle(
                        fontSize: 28.f,
                        color: Colours.app_main,
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
