/*
 * @Author: Arsize 
 * @Date: 2021-10-26 17:51:57 
 * @Describe: 电柜信息
 */

part of admin_cabinet_detail;

class CabinetInfo extends StatelessWidget {
  const CabinetInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flex(
        direction: Axis.vertical,
        children: [
          Container(
            width: Get.width,
            color: Colors.white,
            padding: EdgeInsets.all(32.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "花梦间民俗（实例画廊点）",
                      style: TextStyle(
                        fontSize: 32.f,
                        color: Colours.app_main,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "编辑",
                          style: TextStyle(
                            fontSize: 28.f,
                            color: Colours.app_green,
                          ),
                        ),
                        SizedBox(width: 8.w),
                        Image(
                          width: 32.w,
                          height: 32.w,
                          image: AssetImage("images/cabinet_pencil.png"),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 30.h),
                Container(
                  height: 467.h,
                  width: Get.width,
                  padding: EdgeInsets.all(32.w),
                  color: Color(0xFFF7F9FA),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "定位状态：",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_font_grey,
                                ),
                              ),
                              Text(
                                "已定位",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_font_grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              Text(
                                "启用状态：",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_font_grey,
                                ),
                              ),
                              Text(
                                "启用中",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_font_grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              Text(
                                "电柜ID：",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_font_grey,
                                ),
                              ),
                              Text(
                                "SZ0120212154",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_font_grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              Text(
                                "设备ID：",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_font_grey,
                                ),
                              ),
                              Text(
                                "3000000002",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_font_grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              Text(
                                "主控板版本号：",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_font_grey,
                                ),
                              ),
                              Text(
                                "LED-V007",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_font_grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16.h),
                          Row(
                            children: [
                              Text(
                                "机柜地址：",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_font_grey,
                                ),
                              ),
                              Text(
                                "深圳市宝安区航程大道001号",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_font_grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [],
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Text(
                          "重新定位",
                          style: TextStyle(
                            fontSize: 28.f,
                            color: Colours.app_green,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20.h),
                Container(
                  padding: EdgeInsets.only(bottom: 29.h),
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Row(children: [
                            Text(
                              "实时性能",
                              style: TextStyle(
                                fontSize: 32.f,
                                fontWeight: FontWeight.w600,
                                color: Colours.app_main,
                              ),
                            ),
                            SizedBox(width: 14.w),
                            Text(
                              "更新时间 2020.04.24 12:00:09",
                              style: TextStyle(
                                fontSize: 28.f,
                                color: Color(0xFF666666),
                              ),
                            )
                          ]),
                        ],
                      ),
                      Positioned(
                        right: 30.w,
                        child: Text(
                          "点击刷新",
                          style: TextStyle(
                            fontSize: 28.f,
                            color: Colours.app_green,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.all(29.w),
                    color: Color(0xFFF7F9FA),
                    child: Stack(
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  "机柜总电压：",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                ),
                                Text(
                                  "220V",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 16.h),
                            Row(
                              children: [
                                Text(
                                  "机柜总电流：",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                ),
                                Text(
                                  "24A",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 16.h),
                            Row(
                              children: [
                                Text(
                                  "柜体温度值：",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                ),
                                Text(
                                  "90",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 16.h),
                            Row(
                              children: [
                                Text(
                                  "电表读数：",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                ),
                                Text(
                                  "1132.8kWh",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 16.h),
                            Row(
                              children: [
                                Text(
                                  "GSM信号强度：",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                ),
                                Text(
                                  "67",
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey,
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
