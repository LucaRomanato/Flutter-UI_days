part of details_page_view;

class _DetailsPageMobile extends StatelessWidget {
  final DetailsPageViewModel viewModel;

  _DetailsPageMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(32),
            child: Column(
              children: <Widget>[
                Text(
                  'greenery nyc',
                  style: TextStyle(
                    color: white,
                    letterSpacing: 1.1,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 32,
                ),
                Container(
                    width: 200,
                    child: Text(
                      'Product overview',
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          fontSize: 48),
                    )),
                SizedBox(
                  height: 42,
                ),
                itemRow(Icons.star, 'water', 'every 7 days'),
                SizedBox(
                  height: 16,
                ),
                itemRow(Icons.ac_unit, 'humidity', 'up to 82%'),
                SizedBox(
                  height: 16,
                ),
                itemRow(Icons.straighten, 'size', '38" - 48" tdll'),
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          InformationCard(text: 'Delivery Information'),
          SizedBox(
            height: 32,
          ),
          InformationCard(text: 'Return Policy'),
 Spacer(),
          Container(
            height: 80.0,
            child: Row(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.white,
                  ),
                ),
                Container(
                    height: 80.0,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        color: Color(0xff2c2731),
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(48.0))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Text(
                          'add to cart',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  itemRow(icon, name, title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(width: 6.0),
            Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            )
          ],
        ),
        Text(title, style: TextStyle(color: Colors.white54, fontSize: 20.0))
      ],
    );
  }
}
