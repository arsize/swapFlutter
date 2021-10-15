part of shop_product_detail;

class SelectProduct extends StatelessWidget {
  const SelectProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32.w, left: 32.w, right: 32.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Image(
                width: 220.w,
                height: 220.w,
                image: AssetImage("images/product_item_img.png"),
              ),
              SizedBox(width: 40.w),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "￥1276-1659",
                      style: TextStyle(
                        fontSize: 32.f,
                        color: Colours.app_main,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "库存：200台",
                      style: TextStyle(
                        fontSize: 28.f,
                        color: Colours.app_font_grey6,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Text(
                      "请选择规格分类",
                      style: TextStyle(
                        fontSize: 28.f,
                        color: Colours.app_font_grey6,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h),
          Text(
            "规格",
            style: TextStyle(fontSize: 30.f, color: Colours.app_font_grey6),
          ),
          SizedBox(
            height: 20.h,
          ),
          Wrap(
            spacing: 20.w,
            runSpacing: 20.w,
            children: [
              Container(
                alignment: Alignment.center,
                width: 180.w,
                height: 60.w,
                child: Text("白蓝色"),
                color: Colours.app_light_grey,
              ),
              Container(
                alignment: Alignment.center,
                width: 180.w,
                height: 60.w,
                child: Text("灰黄色"),
                color: Colours.app_light_grey,
              ),
              Container(
                alignment: Alignment.center,
                width: 180.w,
                height: 60.w,
                child: Text("红色"),
                color: Colours.app_light_grey,
              ),
              Container(
                alignment: Alignment.center,
                width: 180.w,
                height: 60.w,
                child: Text("灰色"),
                color: Colours.app_light_grey,
              ),
              Container(
                alignment: Alignment.center,
                width: 180.w,
                height: 60.w,
                child: Text("黑色"),
                color: Colours.app_light_grey,
              )
            ],
          ),
          SizedBox(height: 42.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "购买数量",
                style: TextStyle(
                  fontSize: 30.f,
                  color: Colours.app_font_grey6,
                ),
              ),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    decoration: BoxDecoration(
                      borderRadius: ArUtil.border(6),
                      color: Colours.app_light_grey,
                    ),
                    width: 48.w,
                    height: 48.w,
                    child: Icon(
                      Icons.minimize,
                      size: 15,
                    ),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: ArUtil.border(6),
                      color: Colours.app_light_grey,
                    ),
                    width: 48.w,
                    height: 48.w,
                    child: Text("1"),
                  ),
                  SizedBox(width: 20.w),
                  Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      borderRadius: ArUtil.border(6),
                      color: Colours.app_light_grey,
                    ),
                    width: 48.w,
                    height: 48.w,
                    child: Icon(
                      Icons.add,
                      size: 15,
                    ),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 24.h),
          Container(
            padding: EdgeInsets.all(20.w),
            alignment: Alignment.center,
            child: arBtn(
              width: 678,
              height: 88,
              fn: () {
                Get.back();
                Get.toNamed("/submit-order");
              },
              text: "确认购买",
            ),
          )
        ],
      ),
    );
  }
}
