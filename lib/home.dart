import 'package:flutter/material.dart';

import 'activity.dart';
import 'search.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          title: Text(
            "Instagram",
            style: TextStyle(
              fontFamily: "Engagement",
              fontSize: 35.0,
              color: Colors.black,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.favorite_outline),
              color: Colors.black,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Activity()));
              },
            ),
            IconButton(
              icon: Icon(Icons.messenger_outline_rounded),
              color: Colors.black,
              onPressed: () {},
            ),
          ],
        ),
        body: TabBarView(
          controller: tabController,
          children: [
            Center(
              child: ListView(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15.0, left: 15.0),
                    height: 125.0,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 5.0,
                            ),
                            Stack(
                              children: [
                                Container(
                                  height: 70.0,
                                  width: 70.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(31.0),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/image/pngegg.png"),
                                          fit: BoxFit.cover),
                                      color: Colors.white),
                                ),
                                Positioned(
                                  bottom: 10.0,
                                  right: 0.1,
                                  child: Container(
                                    height: 17.0,
                                    width: 17.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(8.5),
                                        color: Colors.white),
                                  ),
                                ),
                                Positioned(
                                  bottom: 11.0,
                                  right: 1.0,
                                  child: Container(
                                    height: 15.0,
                                    width: 15.0,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.blue),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 12.0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 7.0,
                            ),
                            Text(
                              "Your Story",
                              style: TextStyle(
                                fontFamily: "Roboto",
                                fontWeight: FontWeight.w400,
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        _itemStory("assets/image/player-1.png", "Ronju",
                            Colors.redAccent),
                        _itemStory("assets/image/player-2.png", "Ronju",
                            Colors.green[300]),
                        _itemStory("assets/image/player-3.png", "Ronju",
                            Colors.redAccent),
                        _itemStory("assets/image/player-5.png", "Ronju",
                            Colors.redAccent),
                        _itemStory("assets/image/player-6.png", "Ronju",
                            Colors.redAccent),
                      ],
                    ),
                  ),
                  Divider(),
                  _itemPost(
                      "assets/image/player-2.png",
                      "Tom Vai",
                      "assets/image/cactus.jpeg",
                      "71 likes",
                      "What kind of work??",
                      "5 minutes ago"),
                  _itemPost(
                      "assets/image/player-1.png",
                      "Ronju Vai",
                      "assets/image/cone.jpeg",
                      "57 likes",
                      "This is my cone...",
                      "9 minutes ago"),
                  _itemPost(
                      "assets/image/player-3.png",
                      "Zabed Vai",
                      "assets/image/image4.png",
                      "31 likes",
                      "Look my.....",
                      "15 minutes ago"),
                ],
              ),
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
        ));
  }

  Widget _itemPost(profileImage, name, mainImage, likes, text, mints) {
    return Container(
      height: 515.0,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30.0,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 15.0, right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image: AssetImage(profileImage),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Text(
                      name,
                      style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        fontSize: 14.0,
                      ),
                    )
                  ],
                ),
                IconButton(
                    icon: Icon(Icons.more_vert_outlined), onPressed: () {})
              ],
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: 300.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(mainImage), fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 10,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(left: 5.0, right: 5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        icon: Icon(
                          Icons.favorite_border_outlined,
                          size: 25.0,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.sms_outlined,
                          size: 25.0,
                        ),
                        onPressed: () {}),
                    IconButton(
                        icon: Icon(
                          Icons.send,
                          size: 25.0,
                        ),
                        onPressed: () {}),
                  ],
                ),
                IconButton(
                    icon: Icon(
                      Icons.bookmark_border,
                      size: 25.0,
                    ),
                    onPressed: () {}),
              ],
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            height: 15.0,
            width: MediaQuery.of(context).size.width,
            child: Text(
              likes,
              style: TextStyle(
                fontFamily: "Roboto",
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
          ),
          SizedBox(
            height: 3.0,
          ),
          Container(
            margin: EdgeInsets.only(top: 0.0),
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            height: 15.0,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.bold,
                    fontSize: 14.0,
                  ),
                ),
                SizedBox(
                  width: 3.0,
                ),
                Text(
                  text,
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 12.0,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 15.0,
              right: 15.0,
            ),
            height: 15.0,
            width: MediaQuery.of(context).size.width,
            child: Text(
              "View all 6 comments",
              style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                  fontSize: 15.0,
                  color: Colors.grey),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: 30.0,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(bottom: 7.0),
            padding: EdgeInsets.only(
              left: 15.0,
              right: 5.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                              image: AssetImage("assets/image/player-2.png"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      "Add comment...",
                      style: TextStyle(
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w400,
                          fontSize: 15.0,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
          Container(
            padding: EdgeInsets.only(
              left: 15.0,
              right: 15.0,
            ),
            height: 15.0,
            width: MediaQuery.of(context).size.width,
            child: Text(
              mints,
              style: TextStyle(
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w400,
                  fontSize: 9.0,
                  color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }

  Widget _itemStory(imageUrl, name, Color color) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 80.0,
                width: 80.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40.0), color: color),
              ),
              Positioned(
                top: 2.5,
                left: 2.5,
                child: Container(
                  height: 75.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35.5),
                      color: Colors.white),
                ),
              ),
              Positioned(
                top: 5.0,
                left: 5.0,
                child: Container(
                  height: 70.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35.0),
                    image: DecorationImage(
                      image: AssetImage(imageUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            name,
            style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.w400,
              fontSize: 12.0,
            ),
          ),
        ],
      ),
    );
  }
}
