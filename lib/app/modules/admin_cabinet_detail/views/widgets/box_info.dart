/*
 * @Author: Arsize 
 * @Date: 2021-10-26 17:50:26 
 * @Describe: 仓位信息
 */
part of admin_cabinet_detail;

class BoxInfo extends StatelessWidget {
  const BoxInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      color: Colors.white,
      padding: EdgeInsets.only(
        top: 37.h,
        left: 32.w,
        right: 32.w,
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "更新时间 2020.04.24 12：00：09",
                style: TextStyle(
                  fontSize: 28.f,
                  color: Colours.app_font_grey6,
                ),
              ),
              Text(
                "点击刷新",
                style: TextStyle(
                  fontSize: 28.f,
                  color: Colours.app_green,
                ),
              )
            ],
          ),
          Positioned(
            top: 60.h,
            left: 0,
            right: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  width: 32.w,
                  height: 32.w,
                  image: AssetImage(
                    "images/admin_question.png",
                  ),
                ),
                SizedBox(width: 10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "点击以下仓位编号，可对相应的仓位进行管理操作。",
                      style: TextStyle(
                        fontSize: 28.f,
                        color: Colours.app_font_grey,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          "如需快捷操作，请点击",
                          style: TextStyle(
                            fontSize: 28.f,
                            color: Colours.app_font_grey,
                          ),
                        ),
                        Text(
                          "“一键开仓”",
                          style: TextStyle(
                            fontSize: 28.f,
                            color: Colours.app_green,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 170.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image(
                      width: 32.w,
                      height: 32.w,
                      image: AssetImage("images/admin_line.png"),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "禁用",
                      style: TextStyle(
                        fontSize: 24.f,
                        color: Colours.app_font_grey,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image(
                      width: 32.w,
                      height: 32.w,
                      image: AssetImage("images/admin_group.png"),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "仓门已打开",
                      style: TextStyle(
                        fontSize: 24.f,
                        color: Colours.app_font_grey,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image(
                      width: 32.w,
                      height: 32.w,
                      image: AssetImage("images/admin_lock.png"),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "锁定",
                      style: TextStyle(
                        fontSize: 24.f,
                        color: Colours.app_font_grey,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    InkWell(
                      onTap: () {
                        showPopover(
                          context: Get.context!,
                          backgroundColor: Colours.app_main,
                          transitionDuration: Duration(milliseconds: 150),
                          bodyBuilder: (context) => Container(
                            width: 506.w,
                            height: 70.h,
                            color: Colours.app_main,
                            child: Text("用户电池被吞并后系统自动锁定仓"),
                          ),
                          onPop: () => print('Popover was popped!'),
                          direction: PopoverDirection.bottom,
                          width: 506.w,
                          height: 70.h,
                          arrowHeight: 15,
                          arrowWidth: 30,
                        );
                      },
                      child: Image(
                        width: 32.w,
                        height: 32.w,
                        image: AssetImage("images/admin_question.png"),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Image(
                      width: 32.w,
                      height: 32.w,
                      image: AssetImage("images/admin_fire.png"),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      "已启用灭火器",
                      style: TextStyle(
                        fontSize: 24.f,
                        color: Colours.app_font_grey,
                      ),
                    ),
                    SizedBox(width: 8.w),
                    InkWell(
                      onTap: () {},
                      child: Image(
                        width: 32.w,
                        height: 32.w,
                        image: AssetImage("images/admin_question.png"),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 250.h,
            bottom: 32.h,
            left: 0,
            right: 0,
            child: Container(
              width: Get.width,
              child: AnimationLimiter(
                child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30.w,
                    crossAxisSpacing: 30.w,
                    childAspectRatio: 0.95,
                  ),
                  itemBuilder: (context, index) {
                    return AnimationConfiguration.staggeredGrid(
                      columnCount: 2,
                      position: index,
                      duration: Duration(milliseconds: 375),
                      child: SlideAnimation(
                        verticalOffset: 50.0,
                        child: FadeInAnimation(
                          child: InkWell(
                            onTap: () {
                              Get.toNamed("/shop-product-detail");
                            },
                            child: Container(
                              width: 327.w,
                              height: 296.h,
                              padding: EdgeInsets.all(32.w),
                              decoration: BoxDecoration(
                                  borderRadius: ArUtil.border(15),
                                  border: Border.all(
                                    width: 1.w,
                                    color: Colours.app_blue,
                                    style: BorderStyle.solid,
                                  )),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "BT1060…413086",
                                    style: TextStyle(
                                      fontSize: 28.f,
                                      color: Colours.app_blue,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: 12.h),
                                  Text(
                                    "型号：60V20Ah",
                                    style: TextStyle(
                                      fontSize: 26.f,
                                      color: Colours.app_font_grey6,
                                    ),
                                  ),
                                  Text(
                                    "电量：80%",
                                    style: TextStyle(
                                      fontSize: 26.f,
                                      color: Colours.app_font_grey6,
                                    ),
                                  ),
                                  Text(
                                    "电池电压：60V",
                                    style: TextStyle(
                                      fontSize: 26.f,
                                      color: Colours.app_font_grey6,
                                    ),
                                  ),
                                  Text(
                                    "仓内温度：36℃",
                                    style: TextStyle(
                                      fontSize: 26.f,
                                      color: Colours.app_font_grey6,
                                    ),
                                  ),
                                  Text(
                                    "充电电流：0A",
                                    style: TextStyle(
                                      fontSize: 26.f,
                                      color: Colours.app_font_grey6,
                                    ),
                                  ),
                                  Text(
                                    "充电状态：已充满",
                                    style: TextStyle(
                                      fontSize: 26.f,
                                      color: Colours.app_font_grey6,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
