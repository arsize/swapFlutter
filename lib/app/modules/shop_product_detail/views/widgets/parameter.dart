part of shop_product_detail;

class Parameter extends StatelessWidget {
  const Parameter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 40.h),
          Text(
            "商品参数",
            style: TextStyle(
              color: Colours.app_main,
              fontSize: 34.f,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 40.h),
        ],
      ),
    );
  }
}
