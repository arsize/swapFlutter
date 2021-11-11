part of service_agent_view;

class AgentList extends StatelessWidget {
  const AgentList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GetBuilder<ServiceAgentController>(
        builder: (_) {
          var items = _.serviceAgent.data?[_.selectedIndex].shopBusinessList;
          return ListView.builder(
            itemCount: items?.length ?? 0,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  AgentItem(
                    busName: items?[index].busName,
                    busAddress: items?[index].busAddress,
                    dis: items?[index].dis,
                    isServeVehicle: items?[index].isServeVehicle,
                    isServerBattery: items?[index].isServerBattery,
                    isSupportRentalService:
                        items?[index].isSupportRentalService,
                    isServerSale: items?[index].isServerSale,
                    latitude: items?[index].latitude,
                    longitude: items?[index].longitude,
                    busMobile: items?[index].busMobile,
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
