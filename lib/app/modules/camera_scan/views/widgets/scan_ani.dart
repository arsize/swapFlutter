part of camera_scan_view;

class ScanAnimate extends StatefulWidget {
  const ScanAnimate({Key? key}) : super(key: key);

  @override
  _ScanAnimateState createState() => _ScanAnimateState();
}

class _ScanAnimateState extends State<ScanAnimate>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> animation;
  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(duration: const Duration(seconds: 3), vsync: this);
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reset();
        controller.forward();
      }
    });
    animation =
        Tween(begin: Offset(0, 0), end: Offset(0, 12)).animate(controller);
    controller.forward();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SlideTransition(
        position: animation,
        child: Opacity(
          opacity: 0.6,
          child: Container(
            child: Image(
              width: 500.w,
              height: 40.h,
              image: AssetImage("images/scan_line_view.png"),
            ),
          ),
        ),
      ),
    );
  }
}
