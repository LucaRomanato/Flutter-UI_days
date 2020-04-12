part of home_view;

class _HomeMobile extends StatelessWidget {
  final HomeViewModel viewModel;

  _HomeMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColor,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(110.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 8,
                      ),
                      Icon(Icons.arrow_back),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 200,
                        child: Text(
                          'Foglia di Fico',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 32),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        '10" Nursery Pot',
                        style: TextStyle(color: Colors.black87),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8.0),
                            child: Text(
                              '\$',
                              style: TextStyle(
                                color: greenColor,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Text(
                            '100',
                            style: TextStyle(
                                color: greenColor,
                                fontSize: 42,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Spacer(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FloatingActionButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsPageView()));
                            },
                            backgroundColor: greenColor,
                            child: Icon(Icons.shopping_cart),
                          ),
                          Container(
                            child: Image.network(
                              productImage,
                              fit: BoxFit.cover,
                            ),
                            width: 180,
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                )),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 38.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 8,
                  ),
                  Center(
                    child: Text(
                      'Planting requirements',
                      style: TextStyle(
                          color: white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.1),
                    ),
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FooterCard(
                        quantity: '250',
                        misureUnit: 'ml',
                        element: 'Water',
                      ),
                      FooterCard(
                        quantity: '18',
                        misureUnit: 'C',
                        element: 'Temperature',
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
