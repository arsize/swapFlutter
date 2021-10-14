part of shop_view;

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image(
            image: AssetImage("images/product_item_img.png"),
          ),
          Container(
            padding: EdgeInsets.only(
                top: 13.h, bottom: 13.h, left: 20.w, right: 20.w),
            alignment: Alignment.topLeft,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                left: BorderSide(
                  style: BorderStyle.solid,
                  color: Colours.app_lignt_grey,
                ),
                right: BorderSide(
                  style: BorderStyle.solid,
                  color: Colours.app_lignt_grey,
                ),
                bottom: BorderSide(
                  style: BorderStyle.solid,
                  color: Colours.app_lignt_grey,
                ),
              ),
            ),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "M+顶配版电动两轮车",
                    style: TextStyle(
                      fontSize: 26.f,
                      fontWeight: FontWeight.w600,
                      color: Colours.app_main,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "2999元",
                        style: TextStyle(
                          fontSize: 28.f,
                          color: Colours.app_orange_red,
                        ),
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      Text(
                        "3299元",
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontSize: 22.f,
                          color: Colours.app_normal_grey,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
