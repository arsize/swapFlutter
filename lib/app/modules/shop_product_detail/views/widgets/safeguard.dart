part of shop_product_detail;

class Safeguard extends StatelessWidget {
  const Safeguard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 40.h),
          Text(
            "基础保障",
            style: TextStyle(
              color: Colours.app_main,
              fontSize: 34.f,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 40.h),
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 32.w, right: 32.w),
                child: Row(
                  children: [
                    Container(
                      width: 20.w,
                      height: 20.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.w)),
                        border: Border.all(
                            width: 6.w,
                            style: BorderStyle.solid,
                            color: Colours.app_title_yellow),
                      ),
                    ),
                    SizedBox(width: 24.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "假一赔四",
                          style: TextStyle(
                            fontSize: 28.f,
                            color: Colours.app_main,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          "正品保障，假一赔四",
                          style: TextStyle(
                            fontSize: 24.f,
                            color: Colours.app_normal_grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 64.h),
              Padding(
                padding: EdgeInsets.only(left: 32.w, right: 32.w),
                child: Row(
                  children: [
                    Container(
                      width: 20.w,
                      height: 20.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.w)),
                        border: Border.all(
                            width: 6.w,
                            style: BorderStyle.solid,
                            color: Colours.app_title_yellow),
                      ),
                    ),
                    SizedBox(width: 24.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "付款后48小时内发货",
                          style: TextStyle(
                            fontSize: 28.f,
                            color: Colours.app_main,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          "商品自付款完成时起，48小时内发货。",
                          style: TextStyle(
                            fontSize: 24.f,
                            color: Colours.app_normal_grey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 64.h),
              Padding(
                padding: EdgeInsets.only(left: 32.w, right: 32.w),
                child: Row(
                  children: [
                    Container(
                      width: 20.w,
                      height: 20.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10.w)),
                        border: Border.all(
                            width: 6.w,
                            style: BorderStyle.solid,
                            color: Colours.app_title_yellow),
                      ),
                    ),
                    SizedBox(width: 24.w),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "坏单包赔",
                            style: TextStyle(
                              fontSize: 28.f,
                              color: Colours.app_main,
                            ),
                          ),
                          SizedBox(height: 8.h),
                          Text(
                            "所售商品在签收时如有商品破损、变质、动植物死亡等情况，可在24小时内向我们举证，我们将在48小时内处理。",
                            style: TextStyle(
                              fontSize: 24.f,
                              color: Colours.app_normal_grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
