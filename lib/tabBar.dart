import 'package:flutter/material.dart';
import 'search.dart';
import 'home.dart';

class TabBarList extends StatefulWidget {
  const TabBarList({Key key}) : super(key: key);

  @override
  _TabBarListState createState() => _TabBarListState();
}

class _TabBarListState extends State<TabBarList>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 5, vsync: this);
    tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: tabController,
          indicatorColor: Colors.white,
          tabs: [
            Tab(
              icon: Icon(
                tabController.index == 0 ? Icons.home : Icons.home_outlined,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: tabController.index == 1 ? 25.0 : 24.0,
              ),
            ),
            Tab(
              icon: Icon(
                tabController.index == 2
                    ? Icons.add_box
                    : Icons.add_box_outlined,
                color: Colors.black,
              ),
            ),
            Tab(
              icon: Icon(
                tabController.index == 3
                    ? Icons.shopping_bag
                    : Icons.shopping_bag_outlined,
                color: Colors.black,
              ),
            ),
            Tab(
              child: Container(
                height: 25.0,
                width: 25.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    image: DecorationImage(
                        image: AssetImage("assets/image/pngegg.png"),
                        fit: BoxFit.cover),
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Center(
            child: Home(),
          ),
          Center(
            child: Search(),
          ),
          Center(
            child: Search(),
          ),
          Center(
            child: Search(),
          ),
          Center(
            child: Search(),
          ),
        ],
      ),
    );
  }
}
