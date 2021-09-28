part of exchange_info_view;

class CabinetInfo extends StatelessWidget {
  const CabinetInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(32.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "华丰国际02柜",
            style: TextStyle(
              fontSize: 32.f,
              fontWeight: FontWeight.w600,
              color: Colours.app_main,
            ),
          ),
          SizedBox(
            height: 6.h,
          ),
          Row(
            children: [
              Text(
                "ID",
                style: TextStyle(
                  color: Colours.app_normal_grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 24.f,
                ),
              ),
              SizedBox(
                width: 11.w,
              ),
              Text(
                "000001",
                style: TextStyle(
                  color: Colours.app_normal_grey,
                  fontSize: 24.f,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
