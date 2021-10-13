part of home_view;

class PanelBtnList extends StatelessWidget {
  const PanelBtnList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 32.w,
        right: 32.w,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Colours.app_normal_grey.withOpacity(0.1),
              ),
              height: 100.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    width: 38.w,
                    height: 38.w,
                    image: AssetImage("images/home_shop.png"),
                  ),
                  SizedBox(
                    width: 14.w,
                  ),
                  Text(
                    "购买代步",
                    style: TextStyle(fontSize: 28.f),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: 20.w,
          ),
          Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                Get.toNamed("/wallet");
              },
              child: Container(
                height: 100.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  color: Colours.app_normal_grey.withOpacity(0.1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      width: 38.w,
                      height: 38.h,
                      image: AssetImage("images/home_wallet.png"),
                    ),
                    SizedBox(
                      width: 14.w,
                    ),
                    Text(
                      "钱包余额",
                      style: TextStyle(fontSize: 28.f),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
