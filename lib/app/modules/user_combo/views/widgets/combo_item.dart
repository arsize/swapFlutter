part of user_combo_view;

class ProductListItem extends StatelessWidget {
  const ProductListItem({Key? key, this.frequencyCardType}) : super(key: key);

  final int? frequencyCardType;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        width: double.infinity,
        color: Colors.white,
        padding: EdgeInsets.all(
          32.w,
        ),
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
