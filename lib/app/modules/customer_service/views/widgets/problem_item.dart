part of customer_service_view;

class ProblemItem extends StatelessWidget {
  final String title;
  final String content;
  const ProblemItem({Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("/common-problem?title=$title&content=$content");
      },
      child: Container(
        padding: EdgeInsets.only(bottom: 18.h, top: 18.h, left: 10.w),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              style: BorderStyle.solid,
              width: 1.w,
              color: Colours.app_light_grey,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colours.app_main,
                fontSize: 28.f,
              ),
            ),
            Icon(
              Icons.keyboard_arrow_right_outlined,
              color: Colours.app_FC_grey,
            ),
          ],
        ),
      ),
    );
  }
}
