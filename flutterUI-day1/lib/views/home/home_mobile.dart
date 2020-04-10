part of home_view;

class _HomeMobile extends StatefulWidget {
  final HomeViewModel viewModel;

  _HomeMobile(this.viewModel);

  @override
  __HomeMobileState createState() => __HomeMobileState();
}

class __HomeMobileState extends State<_HomeMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: dirtyWhite,
      appBar: AppBar(
        backgroundColor: white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: black,
          ),
          onPressed: () {},
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30))),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Find Your',
                    style: TextStyle(color: black, fontSize: 25),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    'inspiration',
                    style: TextStyle(color: black, fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: dirtyWhite,
                        borderRadius: BorderRadius.circular(15)),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: black),
                        hintText: "What are you looking for? ",
                        hintStyle: TextStyle(color: grey, fontSize: 15),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Promo today',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 180,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        PromoCard(image: 'assets/images/food.jpg'),
                        PromoCard(image: 'assets/images/drink.jpg'),
                        PromoCard(image: 'assets/images/moon.jpg'),
                        PromoCard(image: 'assets/images/spaceSuite.jpg'),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Footer(image: 'assets/images/footer_drink.jpg'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
