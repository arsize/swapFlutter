part of exchange_finish_view;

class FinishPanelLine extends StatelessWidget {
  const FinishPanelLine({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 8.w,
            height: 24.h,
            color: Colours.app_title_yellow,
          ),
          SizedBox(width: 10.w),
          Text(
            title,
            style: TextStyle(
              color: Colours.app_normal_grey,
              fontSize: 28.f,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
