part of home_view;

class PanelHeadText extends StatelessWidget {
  const PanelHeadText({Key? key, required this.str}) : super(key: key);
  final String str;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85.w,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 20.w,
            child: Opacity(
              opacity: str == "换电" ? 0.8 : 0.0,
              child: Container(
                width: 68.w,
                height: 15.w,
                color: Colours.app_yellow,
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 50.w,
            child: Opacity(
              opacity: str == '换电' ? 1 : 0,
              child: Container(
                width: 115.w,
                height: 42.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                    bottomLeft: Radius.zero,
                  ),
                  color: Colours.app_yellow,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 3,
                    bottom: 3,
                    left: 6,
                    right: 6,
                  ),
                  child: Text(
                    "十秒换电",
                    style: TextStyle(
                      fontSize: 21.f,
                      fontWeight: FontWeight.w600,
                      color: Colours.app_main,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Text(
              str,
              style: TextStyle(
                fontSize: 32.f,
                color: Colours.app_main,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
