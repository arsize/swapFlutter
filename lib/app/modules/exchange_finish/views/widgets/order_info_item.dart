part of exchange_finish_view;

class OrderInfoItem extends StatelessWidget {
  final String title;

  final String value;

  const OrderInfoItem({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 220.w,
            child: Text(
              "$title：",
              style: TextStyle(
                color: Colours.app_normal_grey,
                fontSize: 28.f,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 28.f,
                color: Colours.app_main,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
