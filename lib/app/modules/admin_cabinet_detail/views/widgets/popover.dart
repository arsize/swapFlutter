part of admin_cabinet_detail;

class Popover extends StatelessWidget {
  final String popText;

  final String? direction;
  final Widget child;

  const Popover({
    Key? key,
    required this.popText,
    this.direction,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {
          showPopover(
            context: context,
            backgroundColor: Color(0xCC000000),
            transitionDuration: Duration(milliseconds: 150),
            bodyBuilder: (context) => Container(
              color: Colours.app_main,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  popText,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            onPop: () => print('Popover was popped!'),
            direction: direction == 'top'
                ? PopoverDirection.top
                : direction == 'left'
                    ? PopoverDirection.left
                    : direction == 'right'
                        ? PopoverDirection.right
                        : PopoverDirection.bottom,
            width: 540.w,
            height: 70.h,
            arrowHeight: 15.h,
            arrowWidth: 30.w,
          );
        },
        child: child,
      ),
    );
  }
}
