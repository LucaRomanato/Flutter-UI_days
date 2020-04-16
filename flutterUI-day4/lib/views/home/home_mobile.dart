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
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 40, top: 40),
            alignment: Alignment.centerLeft,
            child: CircleAvatar(
              child: ClipOval(
                child: Image(
                  height: 40,
                  width: 40,
                  image: AssetImage(owner.imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: TextField(
              style: TextStyle(fontFamily: 'Monteserrat', fontSize: 22),
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Icon(
                    Icons.add_location,
                    color: Colors.black,
                    size: 40,
                  ),
                ),
                labelText: 'Location',
                labelStyle: TextStyle(fontSize: 20, color: Colors.grey),
                contentPadding: EdgeInsets.only(bottom: 20),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Divider(),
          ),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                SizedBox(
                  width: 50,
                ),
                Padding(
                  padding: EdgeInsets.only(right: 20),
                  child: IconButton(
                    onPressed: () => print('filter'),
                    icon: Icon(Icons.search, size: 35),
                  ),
                ),
                _buildPetFilter(false, 'Cats'),
                _buildPetFilter(true, 'Dogs'),
                _buildPetFilter(false, 'Fishes'),
                _buildPetFilter(false, 'Birds'),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                PetUI(idArray: 0),
                PetUI(idArray: 1),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPetFilter(bool isSelected, String pet) {
    return GestureDetector(
      onTap: () => print('select $pet'),
      child: Container(
        margin: EdgeInsets.all(10),
        width: 80,
        decoration: BoxDecoration(
          color:
              isSelected ? Theme.of(context).primaryColor : Color(0xFFF8F2F7),
          borderRadius: BorderRadius.circular(20),
          border: isSelected
              ? Border.all(width: 8, color: Color(0xFFFED8D3))
              : null,
        ),
        child: Center(
          child: Text(
            pet,
            style: TextStyle(
                fontFamily: 'Monteserrat',
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
        ),
      ),
    );
  }
}
