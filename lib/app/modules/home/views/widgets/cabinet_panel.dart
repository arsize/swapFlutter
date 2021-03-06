/*
 * @Author: Arsize 
 * @Date: 2021-10-11 15:59:02 
 * @Describe:首页机柜详情 
 */
part of home_view;

class CabinetPanel extends StatelessWidget {
  const CabinetPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController home = Get.find();
    return CompositedTransformTarget(
      link: home.layerLink,
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(32.w),
          child: Column(
            children: [
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GetBuilder<HomeController>(builder: (_) {
                            return Text(
                              _.currentCabinetItem.cabinetName ?? '--',
                              style: TextStyle(
                                fontSize: 32.f,
                                fontWeight: FontWeight.w600,
                                color: Colours.app_main,
                              ),
                            );
                          }),
                          SizedBox(height: 24.h),
                          Row(
                            children: [
                              Image(
                                width: 24.w,
                                height: 24.w,
                                image: AssetImage(
                                  "images/cabinet_location.png",
                                ),
                              ),
                              SizedBox(width: 10.w),
                              GetBuilder<HomeController>(builder: (_) {
                                return Text(
                                  _.currentCabinetItem.qrCodeDid ?? '--',
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey6,
                                  ),
                                );
                              })
                            ],
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            children: [
                              Image(
                                width: 24.w,
                                height: 24.w,
                                image: AssetImage(
                                  "images/cabinet_id.png",
                                ),
                              ),
                              SizedBox(width: 10.w),
                              GetBuilder<HomeController>(builder: (_) {
                                return Text(
                                  _.currentCabinetItem.cabinetAddress ?? '--',
                                  style: TextStyle(
                                    fontSize: 28.f,
                                    color: Colours.app_font_grey6,
                                  ),
                                );
                              }),
                            ],
                          )
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          home.showMap(
                            title: home.currentCabinetItem.cabinetName,
                            latitude: home.currentCabinetItem.latitude,
                            longitude: home.currentCabinetItem.longitude,
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(right: 25.w),
                          child: Column(
                            children: [
                              Image(
                                width: 40.w,
                                height: 40.w,
                                image: AssetImage(
                                  "images/cabinet_right_point.png",
                                ),
                              ),
                              SizedBox(
                                height: 14.h,
                              ),
                              Text(
                                "导航",
                                style: TextStyle(
                                  fontSize: 30.f,
                                  color: Colours.app_main,
                                  fontWeight: FontWeight.w600,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  Container(
                    width: 686.w,
                    height: 3.h,
                    color: Colours.app_F1_grey,
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  GetBuilder<HomeController>(builder: (_) {
                    return Offstage(
                      offstage: _.currentCabinetItem.line == 1 &&
                          _.currentCabinetItem.status == 0 &&
                          _.currentCabinetItem.powerOff == false,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "该电柜区暂不能提供服务，请前往其他电柜换电",
                          style: TextStyle(
                            fontSize: 26.f,
                            color: Colours.app_lignt_red,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    );
                  }),
                  SizedBox(
                    height: 15.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                width: 39.w,
                                height: 39.w,
                                image: AssetImage("images/cabinet_battery.png"),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Text(
                                "可换电：",
                                style: TextStyle(
                                  fontSize: 30.f,
                                  color: Colours.app_font_grey6,
                                ),
                              ),
                              GetBuilder<HomeController>(builder: (_) {
                                return Text(
                                  _.currentCabinetItem
                                              .canUseExchangeBatteryNum ==
                                          null
                                      ? '--'
                                      : _.currentCabinetItem
                                          .canUseExchangeBatteryNum
                                          .toString(),
                                  style: TextStyle(
                                    fontSize: 30.f,
                                    color: Colours.app_main,
                                  ),
                                );
                              })
                            ],
                          ),
                          SizedBox(
                            width: 60.w,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image(
                                width: 39.w,
                                height: 39.w,
                                image: AssetImage("images/cabinet_box.png"),
                              ),
                              SizedBox(
                                width: 12.w,
                              ),
                              Text(
                                "空仓：",
                                style: TextStyle(
                                  fontSize: 30.f,
                                  color: Colours.app_font_grey6,
                                ),
                              ),
                              GetBuilder<HomeController>(builder: (_) {
                                return Text(
                                  _.currentCabinetItem.emptyBoxNum == null
                                      ? '--'
                                      : _.currentCabinetItem.emptyBoxNum
                                          .toString(),
                                  style: TextStyle(
                                    fontSize: 30.f,
                                    color: Colours.app_main,
                                  ),
                                );
                              })
                            ],
                          )
                        ],
                      ),
                      GetBuilder<StoreController>(builder: (_) {
                        return Offstage(
                          offstage: !_.isLogin.value,
                          child: InkWell(
                            onTap: () {
                              home.gotoNext();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 173.w,
                              height: 80.h,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colours.app_main,
                                  width: 2.w,
                                  style: BorderStyle.solid,
                                ),
                                borderRadius: ArUtil.border(15),
                              ),
                              child: Text(
                                "扫码换电",
                                style: TextStyle(
                                  fontSize: 28.f,
                                  color: Colours.app_main,
                                ),
                              ),
                            ),
                          ),
                        );
                      })
                    ],
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Image(
                    width: 328.w,
                    height: 196.h,
                    image: AssetImage("images/cabinet_no_img.png"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
