part of product_address;

class ProductListItem extends StatelessWidget {
  const ProductListItem({Key? key, this.name}) : super(key: key);

  final String? name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("edit-address");
      },
      child: Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.all(
          32.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      name ?? '',
                      style: TextStyle(
                        fontSize: 32.f,
                        color: Colours.app_main,
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                      "13244546765",
                      style: TextStyle(
                        color: Colours.app_font_grey6,
                        fontSize: 28.f,
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 23.h,
            ),
            Text(
              "深圳市宝安区西乡街道华丰机器人产业园C栋506",
              style: TextStyle(
                fontSize: 28.f,
                color: Colours.app_font_grey6,
              ),
            )
          ],
        ),
      ),
    );
  }
}
