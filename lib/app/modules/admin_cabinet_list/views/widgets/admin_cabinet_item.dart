/*
 * @Author: Arsize 
 * @Date: 2021-10-26 11:30:48 
 * @Describe: 管理员机柜
 */

part of admin_cabinet_list;

class AdminCabinetItem extends StatelessWidget {
  const AdminCabinetItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("/admin-cabinet-detail");
      },
      child: Container(
        width: 686.w,
        margin: EdgeInsets.only(bottom: 32.h),
        decoration: BoxDecoration(
          borderRadius: ArUtil.border(20),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 20.h, left: 32.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "华盟讲民宿（十里画廊）",
                    style: TextStyle(
                      fontSize: 32.f,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: 136.w,
                    height: 76.h,
                    decoration: BoxDecoration(
                        color: Colours.app_yellow,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          bottomLeft: Radius.circular(50),
                        )),
                    child: Text(
                      "在线",
                      style: TextStyle(
                        fontSize: 28.f,
                        color: Colours.app_main,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20.w, left: 32.w),
                  width: 21.w,
                  height: 21.w,
                  decoration: BoxDecoration(
                    color: Colours.app_admin_blue,
                    borderRadius: ArUtil.border(21),
                  ),
                ),
                Text(
                  "启用",
                  style: TextStyle(
                    fontSize: 30.f,
                    color: Colours.app_admin_blue,
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 32.w, bottom: 32.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 35.h),
                  Text(
                    "电柜ID：000234",
                    style: TextStyle(
                      fontSize: 28.f,
                      color: Colours.app_font_grey,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    "设备ID：SZ0120212154",
                    style: TextStyle(
                      fontSize: 28.f,
                      color: Colours.app_font_grey,
                    ),
                  ),
                  SizedBox(height: 16.h),
                  Text(
                    "电柜地址：000234",
                    style: TextStyle(
                      fontSize: 28.f,
                      color: Colours.app_font_grey,
                    ),
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
            Container(
              width: Get.width,
              height: 1.w,
              color: Colours.app_font_grey.withOpacity(0.4),
            ),
            Container(
              width: Get.width,
              height: 90.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    width: 66.w,
                    height: 66.w,
                    image: AssetImage("images/admin_position_right.png"),
                  ),
                  Text(
                    "导航",
                    style: TextStyle(
                      fontSize: 30.f,
                      color: Colours.app_green,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
