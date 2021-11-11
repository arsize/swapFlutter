part of service_agent_view;

class AgentItem extends StatelessWidget {
  final String? busName;
  final String? busAddress;
  final int? dis;
  final int? isServeVehicle;
  final int? isServerBattery;
  final int? isSupportRentalService;
  final int? isServerSale;
  final int? latitude;
  final int? longitude;
  final String? busMobile;

  const AgentItem({
    Key? key,
    this.busName,
    this.busAddress,
    this.dis,
    this.isServeVehicle,
    this.isServerBattery,
    this.isSupportRentalService,
    this.isServerSale,
    this.latitude,
    this.longitude,
    this.busMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.w,
            style: BorderStyle.solid,
            color: Colours.app_light_grey,
          ),
        ),
      ),
      padding: EdgeInsets.all(32.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                busName ?? '',
                style: TextStyle(
                  fontSize: 28.f,
                  color: Colours.app_main,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Container(
                width: 100.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(
                      color: Colours.app_normal_grey,
                      style: BorderStyle.solid,
                      width: 2.w,
                    ),
                  ),
                ),
                child: Text(
                  formateDis(dis ?? 0),
                  style: TextStyle(
                    fontSize: 25.f,
                    color: Colours.app_normal_grey,
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10.h),
          Row(
            children: [
              Offstage(
                offstage: isServeVehicle == 0,
                child: Container(
                  margin: EdgeInsets.only(right: 16.w),
                  padding: EdgeInsets.only(
                    top: 2.h,
                    bottom: 2.h,
                    left: 8.w,
                    right: 8.w,
                  ),
                  color: Colours.app_light_grey,
                  alignment: Alignment.center,
                  child: Text(
                    "车辆服务",
                    style: TextStyle(
                      fontSize: 22.f,
                      color: Colours.app_font_grey6,
                    ),
                  ),
                ),
              ),
              Offstage(
                offstage: isServerBattery == 0,
                child: Container(
                  margin: EdgeInsets.only(right: 16.w),
                  padding: EdgeInsets.only(
                    top: 2.h,
                    bottom: 2.h,
                    left: 8.w,
                    right: 8.w,
                  ),
                  color: Colours.app_light_grey,
                  alignment: Alignment.center,
                  child: Text(
                    "电池服务",
                    style: TextStyle(
                      fontSize: 22.f,
                      color: Colours.app_font_grey6,
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10.h),
          Text(
            busAddress ?? '',
            style: TextStyle(
              fontSize: 24.f,
              color: Colours.app_normal_grey,
            ),
          ),
          Text(
            "工作日09：30-18：00",
            style: TextStyle(
              fontSize: 24.f,
              color: Colours.app_normal_grey,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      if (busMobile != '') {
                        launch("tel:" + busMobile!);
                      }
                    },
                    child: Text(
                      "联系",
                      style: TextStyle(
                        fontSize: 24.f,
                        fontWeight: FontWeight.w600,
                        color: Colours.app_green,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 100.w),
              Row(
                children: [
                  Text(
                    "导航",
                    style: TextStyle(
                      fontSize: 24.f,
                      fontWeight: FontWeight.w600,
                      color: Colours.app_green,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
