import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() {
    return _DashboardState();
  }
}

class _DashboardState extends State<Dashboard> {
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Dashboard'),
      ),
      body: getPage(currentPage),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(iconData: Icons.home, title: "Home"),
          TabData(iconData: Icons.search, title: "Search"),
          TabData(iconData: Icons.shopping_cart, title: "Basket")
        ],

        // context: context,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
            print(currentPage);
          });
        },
      ),
    );
  }

  Widget homepage() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: Text(
              'Hi Manas!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          CarouselSlider(
              items: [
                Container(
                  // height: 300,
                  // width: double.infinity,
                  child: Image(
                    image: AssetImage('assets/images/banner.jpg'),
                  ),
                )
              ],
              options: CarouselOptions(
                height: 250,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20.0, left: 10.0, right: 10.0),
            child: Text(
              'Explore',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
          ),
          explore(),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }

  Widget explore() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    // width: MediaQuery.of(context).size.width - 40,
                    child: Image(
                      image: AssetImage('assets/images/img.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Question? Start a discussion!',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: Container(
                    // width: MediaQuery.of(context).size.width - 40,
                    child: Image(
                      image: AssetImage('assets/images/exam.jpg'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    'Test you preparation?',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget getPage(int page) {
    switch (page) {
      case 0:
        return homepage();
      case 1:
        return Text('2');
      case 2:
        return Text('3');
    }
  }
}
