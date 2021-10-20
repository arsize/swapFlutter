part of product_address;

class ProductListItem extends StatelessWidget {
  const ProductListItem(
      {Key? key, this.name, this.mobile, this.address, this.id, this.detail})
      : super(key: key);

  final String? name;
  final String? mobile;
  final String? address;
  final String? detail;
  final int? id;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed(
          "/edit-address?id=${id ?? ''}&name=${name ?? ''}&mobile=${mobile ?? ''}&detailedAddress=${detail ?? ''}&address=${address ?? ''}",
        );
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
                      mobile ?? '--',
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
              address ?? '--',
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
