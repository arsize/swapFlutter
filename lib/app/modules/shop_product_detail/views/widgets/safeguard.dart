part of shop_product_detail;

class Safeguard extends StatelessWidget {
  const Safeguard({Key? key}) : super(key: key);

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
            "基础保障",
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
