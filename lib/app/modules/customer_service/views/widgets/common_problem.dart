part of customer_service_view;

class CommonProblem extends StatelessWidget {
  const CommonProblem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CustomerServiceController customer = Get.find();
    return Container(
      width: 686.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: ArUtil.border(8),
      ),
      padding: EdgeInsets.all(24.w),
      child: Column(
        children: [
          Row(
            children: [
              Image(
                width: 80.w,
                height: 80.w,
                image: AssetImage("images/kf_common_problem.png"),
              ),
              SizedBox(width: 24.w),
              Text(
                "常见问题",
                style: TextStyle(
                  color: Colours.app_main,
                  fontSize: 32.f,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ),
          SizedBox(
            height: 16.h,
          ),
          GetBuilder<CustomerServiceController>(builder: (_) {
            return AnimationLimiter(
              child: Column(
                children: AnimationConfiguration.toStaggeredList(
                  duration: const Duration(milliseconds: 275),
                  childAnimationBuilder: (widget) => SlideAnimation(
                    verticalOffset: 50.0,
                    child: FadeInAnimation(
                      child: widget,
                    ),
                  ),
                  children: _.problem
                      .sublist(0, 4)
                      .map((e) => ProblemItem(title: e["title"]))
                      .toList(),
                ),
              ),
            );
          }),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(top: 30.h, bottom: 20.h),
              child: InkWell(
                onTap: customer.changeProblem,
                child: Text(
                  "换一批",
                  style: TextStyle(
                    color: Colours.app_green,
                    fontSize: 24.f,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
