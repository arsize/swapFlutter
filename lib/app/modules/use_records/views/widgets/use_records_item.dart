/*
 * @Author: Arsize 
 * @Date: 2021-10-23 14:31:22 
 * @Describe: 使用记录单项
 */
part of use_records_view;

class UseRecordsItem extends StatelessWidget {
  const UseRecordsItem({
    Key? key,
    this.useType,
    this.exchangeStatus,
    this.chargingStatus,
    this.money,
    this.orderNo,
    this.ctime,
  }) : super(key: key);

  final int? useType;
  final int? exchangeStatus;
  final int? chargingStatus;
  final double? money;
  final String? orderNo;
  final int? ctime;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("/use-records-detail");
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: ArUtil.border(15),
          color: Colors.white,
        ),
        padding: EdgeInsets.all(32.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      useType == 0 ? "换电" : "充电",
                      style: TextStyle(
                        fontSize: 32.f,
                        color: Colours.app_main,
                      ),
                    ),
                    SizedBox(width: 16.w),
                    GetBuilder<UseRecordsController>(builder: (_) {
                      if (useType == 0) {
                        // 换电
                        return Container(
                          width: 92.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                            borderRadius: ArUtil.border(10),
                            color: exchangeStatus == 0
                                ? Colours.D563_yellow
                                : Colours.app_lignt_grey,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            exchangeStatus == -1
                                ? "换电终止"
                                : exchangeStatus == 0
                                    ? "换电中"
                                    : exchangeStatus == 1
                                        ? "已完成"
                                        : "",
                            style: TextStyle(
                              fontSize: 20.f,
                              color: Colours.app_main,
                            ),
                          ),
                        );
                      } else {
                        // 充电
                        return Container(
                          width: 92.w,
                          height: 40.h,
                          alignment: Alignment.center,
                          color: Colours.D563_yellow,
                          child: Text(
                            chargingStatus == -1
                                ? "充电终止"
                                : chargingStatus == 0
                                    ? "操作中"
                                    : chargingStatus == 1
                                        ? "充电中"
                                        : chargingStatus == 2
                                            ? "充电结束"
                                            : chargingStatus == 3
                                                ? "用户取消中"
                                                : chargingStatus == 4
                                                    ? "用户已取消"
                                                    : "",
                            style: TextStyle(
                              fontSize: 20.f,
                              color: Colours.app_main,
                            ),
                          ),
                        );
                      }
                    })
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "查看详情",
                      style: TextStyle(
                        fontSize: 24.f,
                        color: Colours.app_green,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right,
                      color: Colours.app_green,
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 23.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "消费金额：$money元",
                  style: TextStyle(
                    fontSize: 24.f,
                    color: Colours.app_main.withOpacity(0.5),
                  ),
                ),
                Text(
                  "订单编号：$orderNo",
                  style: TextStyle(
                    fontSize: 24.f,
                    color: Colours.app_main.withOpacity(0.5),
                  ),
                ),
                Text(
                  "换电时间：${formateTime(ctime)}",
                  style: TextStyle(
                    fontSize: 24.f,
                    color: Colours.app_main.withOpacity(0.5),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
