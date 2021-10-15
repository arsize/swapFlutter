part of shop_product_detail;

class Parameter extends StatelessWidget {
  const Parameter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32.h, left: 32.w, right: 32.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.h),
          Text(
            "商品参数",
            style: TextStyle(
              color: Colours.app_main,
              fontSize: 34.f,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 25.h),
          _getItem(title: "品牌", value: "小刀"),
          SizedBox(height: 25.h),
          _getItem(title: "型号", value: "Smart-C40"),
          SizedBox(height: 25.h),
          _getItem(title: "颜色分类", value: "白蓝色、灰黄色、红色、灰色、黑色"),
          SizedBox(height: 25.h),
          _getItem(title: "车架材质", value: "高碳钢"),
          SizedBox(height: 25.h),
          _getItem(title: "载重量", value: "50kg-100kg"),
          SizedBox(height: 25.h),
          _getItem(title: "最高时速", value: "25km/h"),
          SizedBox(height: 25.h),
          _getItem(title: "纯电续航", value: "35km-45km"),
          SizedBox(height: 25.h),
          _getItem(title: "电池类型", value: "锂电池"),
          SizedBox(height: 25.h),
          _getItem(title: "电池容量", value: "12AH"),
          SizedBox(height: 25.h),
          _getItem(title: "整车重量", value: "50KG以上"),
          SizedBox(height: 25.h),
        ],
      ),
    );
  }

  Widget _getItem({title, value}) {
    return Row(
      children: [
        Container(
          width: 150.w,
          child: Text(
            title,
            style: TextStyle(
              fontSize: 28.f,
              color: Colours.app_normal_grey,
            ),
          ),
        ),
        Container(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 28.f,
              color: Colours.app_main,
            ),
          ),
        ),
      ],
    );
  }
}
