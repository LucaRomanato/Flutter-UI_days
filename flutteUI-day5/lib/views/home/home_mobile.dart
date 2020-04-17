part of home_view;

class _HomeMobile extends StatefulWidget {
  final HomeViewModel viewModel;

  _HomeMobile(this.viewModel);

  @override
  __HomeMobileState createState() => __HomeMobileState();
}

class __HomeMobileState extends State<_HomeMobile>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;
  int _selectedPage = 0;

  _plantSelector(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1);
        }
        return Center(
          child: SizedBox(
              height: Curves.easeInOut.transform(value) * 500,
              width: Curves.easeInOut.transform(value) * 400,
              child: widget),
        );
      },
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => PlantView(plant: plants[index])));
        },
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Color(0xFF32A060),
                  borderRadius: BorderRadius.circular(20)),
              margin: EdgeInsets.fromLTRB(10, 10, 10, 30),
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Hero(
                        tag: plants[index].imageUrl,
                        child: Image(
                          height: 280,
                          width: 280,
                          image: AssetImage('assets/images/plant$index.png'),
                          fit: BoxFit.cover,
                        )),
                  ),
                  Positioned(
                    top: 30,
                    right: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('From',
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        Text('\$${plants[index].price}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 30,
                    bottom: 40,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(plants[index].category.toUpperCase(),
                            style:
                                TextStyle(color: Colors.white, fontSize: 15)),
                        SizedBox(height: 5),
                        Text(plants[index].name,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              bottom: 4,
              child: RawMaterialButton(
                padding: EdgeInsets.all(15),
                shape: CircleBorder(),
                elevation: 2,
                fillColor: Colors.black,
                child: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: () => print('add to cart'),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 5, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: AnnotatedRegion<SystemUiOverlayStyle>(
          value: SystemUiOverlayStyle.dark,
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 60),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.menu, size: 30, color: Colors.grey),
                    Icon(Icons.shopping_cart, size: 30, color: Colors.black)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30),
                child: Text(
                  'Top Picks',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TabBar(
                controller: _tabController,
                indicatorColor: Colors.transparent,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey.withOpacity(0.6),
                labelPadding: EdgeInsets.symmetric(horizontal: 35),
                isScrollable: true,
                tabs: <Widget>[
                  Tab(
                      child: Text('Top',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                  Tab(
                      child: Text('Outdoor',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                  Tab(
                      child: Text('Indoor',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                  Tab(
                      child: Text('New Arrivals',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                  Tab(
                      child: Text('Limited Edition',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 500,
                width: double.infinity,
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (int index) {
                    setState(() {
                      _selectedPage = index;
                    });
                  },
                  itemCount: plants.length,
                  itemBuilder: (BuildContext context, int index) {
                    return _plantSelector(index);
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Description',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      plants[_selectedPage].description,
                      style: TextStyle(color: Colors.black87, fontSize: 16),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
