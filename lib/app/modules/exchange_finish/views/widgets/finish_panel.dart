part of exchange_finish_view;

class FinishPanel extends StatelessWidget {
  const FinishPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32.w),
      width: 686.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: ArUtil.border(16),
        boxShadow: [
          BoxShadow(
            color: Colours.app_E1_grey,
            offset: Offset(0.0, 2.0),
            blurRadius: 2,
            spreadRadius: 0,
          )
        ],
      ),
      child: Column(
        children: [
          FinishPanelLine(title: "订单信息"),
          SizedBox(height: 17.h),
          Container(
            padding: EdgeInsets.only(top: 34.w, bottom: 34.w),
            decoration: BoxDecoration(
              color: Colours.app_FA_grey,
              borderRadius: ArUtil.border(12),
            ),
            child: Flex(
              direction: Axis.horizontal,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "1号",
                        style: TextStyle(
                          fontSize: 32.f,
                          color: Colours.app_main,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "放入仓",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: 24.f,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 1.w,
                  height: 88.h,
                  color: Colours.app_FD_grey,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "2号",
                        style: TextStyle(
                          fontSize: 32.f,
                          color: Colours.app_main,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "取出仓",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: 24.f,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  width: 1.w,
                  height: 88.h,
                  color: Colours.app_FD_grey,
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "5.00",
                        style: TextStyle(
                          fontSize: 32.f,
                          color: Colours.app_main,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        "余额支付（元）",
                        style: TextStyle(
                          color: Colours.app_normal_grey,
                          fontSize: 24.f,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          OrderInfoItem(
            title: "订单编号",
            value: "NO123456789",
          ),
          OrderInfoItem(
            title: "换电时间",
            value: "2019.09.12 12:00",
          ),
          OrderInfoItem(
            title: "放入电池SN码",
            value: "BT106002012JETE200413086",
          ),
          OrderInfoItem(
            title: "取出电池SN码",
            value: "BT106002012JETE200413086",
          ),
          OrderInfoItem(
            title: "计费规则",
            value: "套餐有效期内，使用限定的免费换电次数进行抵扣",
          ),
        ],
      ),
    );
  }
}
