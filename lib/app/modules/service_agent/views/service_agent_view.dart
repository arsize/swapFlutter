library service_agent_view;

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:raintree/app/colors/colors.dart';
import 'package:raintree/app/common/methods/normal.dart';
import 'package:raintree/app/common/widgets/app_bar.dart';
import 'package:raintree/app/utils/utils.dart';
import 'package:url_launcher/url_launcher.dart';
import '../controllers/service_agent_controller.dart';

part './widgets/agent_list.dart';
part './widgets/agent_item.dart';

class ServiceAgentView extends GetView<ServiceAgentController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(title: "服务网点 "),
      body: Row(
        children: [
          Container(
            width: 180.w,
            color: Color(0xFFF6F6F8),
            child: GetBuilder<ServiceAgentController>(
              builder: (_) {
                return ListView.builder(
                  itemCount: _.serviceAgent.data?.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        _.selectAgentItem(index);
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 100.h,
                            color: (_.selectedIndex == index)
                                ? Colors.white
                                : Color(0xFFF6F6F8),
                            child: (_.serviceAgent.data != null &&
                                    _.serviceAgent.data!.isNotEmpty)
                                ? Row(
                                    children: [
                                      Container(
                                        width: 5,
                                        height: 100.h,
                                        color: (_.selectedIndex == index)
                                            ? Colours.app_yellow
                                            : Colors.white,
                                      ),
                                      Expanded(
                                        child: Center(
                                          child: Text(
                                            _.serviceAgent.data![index].cityName
                                                .toString(),
                                            style: TextStyle(
                                              color: Colours.app_main,
                                              fontSize: 28.f,
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  )
                                : Container(),
                          )
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          Expanded(
            child: AgentList(),
          )
        ],
      ),
    );
  }
}
