import 'package:farmer/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: Gd()));

class Gd extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Gd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFBFDFB2),
      drawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: Text('Service list'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Abrar045",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Color(0xffa29aac),
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                IconButton(
                  alignment: Alignment.topCenter,
                  icon: Image.asset(
                    "assests/notification.png",
                    width: 24,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          GridDashboard()
        ],
      ),
    );
  }
}

class GridDashboard extends StatelessWidget {
  Items item1 =
      new Items(title: "Weather Forcast", event: "", img: "assests/wt.jpg");

  Items item2 = new Items(
    title: "Fertilizer Recommendation",
    event: "",
    img: "assests/fartilizer.png",
  );
  Items item3 = new Items(
    title: "Agriculture Office",
    event: "",
    img: "assests/location.png",
  );
  Items item4 = new Items(
    title: "Irrigation Control",
    event: "",
    img: "assests/irrigc.png",
  );
  Items item5 = new Items(
    title: "Irrigation History",
    event: "4 Items",
    img: "assests/irrigh.png",
  );
  Items item6 = new Items(
    title: "Logout",
    event: "2 Items",
    img: "assests/logout.png",
  );

  @override
  Widget build(BuildContext context) {
    List<Items> myList = [item1, item2, item3, item4, item5, item6];
    var color = 0xff453658;
    return Flexible(
      child: GridView.count(
          childAspectRatio: 1.0,
          padding: EdgeInsets.only(left: 16, right: 16),
          crossAxisCount: 2,
          crossAxisSpacing: 18,
          mainAxisSpacing: 18,
          children: myList.map((data) {
            return Container(
              decoration: BoxDecoration(
                  color: Color(color), borderRadius: BorderRadius.circular(10)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    data.img,
                    width: 42,
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      data.title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    data.event,
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 11,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            );
          }).toList()),
    );
  }
}

class Items {
  String title;

  String event;
  String img;
  Items({required this.title, required this.event, required this.img});
}
