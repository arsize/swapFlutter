part of home_view;

class Panel extends StatelessWidget {
  const Panel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController home = Get.find();
    final StoreController store = Get.find();
    return CompositedTransformTarget(
      link: home.layerLink,
      child: Container(
        child: Column(
          children: [
            Column(
              children: [
                PanelHeadRow(),
                SizedBox(
                  height: 20.h,
                ),
                Obx(
                  () => arBtn(
                    fn: () {
                      store.isLogin.value
                          ? home.gotoNext()
                          : Get.toNamed(
                              "/login",
                            );
                    },
                    leftIcon:
                        store.isLogin.value ? "images/home_scan_icon.png" : "",
                    text: store.isLogin.value ? "扫码换电".tr : "登录/注册".tr,
                    width: 630,
                    height: 110,
                    fontSize: 36,
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
              ],
            ),
            PanelBtnList(),
            SizedBox(
              height: 32.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
              ),
              child: InkWell(
                onTap: () {
                  Get.toNamed("/shop");
                },
                child: Image(
                  width: 686.w,
                  image: AssetImage("images/home_panel_banner.png"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
