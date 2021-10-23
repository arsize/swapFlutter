part of use_records_detail_view;

class RecordsItem extends StatelessWidget {
  const RecordsItem({Key? key, required this.lable, required this.value})
      : super(key: key);
  final String lable;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            lable,
            style: TextStyle(
              fontSize: 28.f,
              color: Colours.app_normal_grey,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 28.f,
              color: Colours.app_main,
            ),
          )
        ],
      ),
    );
  }
}
