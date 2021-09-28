part of serving_view;

class BoxInfo extends StatelessWidget {
  const BoxInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 606.w,
      height: 160.h,
      decoration: BoxDecoration(
        color: Colours.app_FA_grey,
        borderRadius: ArUtil.border(12),
      ),
      child: Flex(
        direction: Axis.horizontal,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  cupertinoActivityIndicator,
                  width: 32.w,
                  height: 32.w,
                ),
                SizedBox(height: 12.h),
                Text(
                  "放入仓",
                  style: TextStyle(
                    color: Colours.app_normal_grey,
                    fontSize: 24.f,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  cupertinoActivityIndicator,
                  width: 32.w,
                  height: 32.w,
                ),
                SizedBox(height: 12.h),
                Text(
                  "取出仓",
                  style: TextStyle(
                    color: Colours.app_normal_grey,
                    fontSize: 24.f,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
