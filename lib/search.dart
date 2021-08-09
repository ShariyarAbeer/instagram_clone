import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Text("data"),
              _longImage(),
              // GridView.count(
              //   crossAxisCount: 3,
              //   mainAxisSpacing: 4.0,
              //   crossAxisSpacing: 4,
              //   shrinkWrap: true,
              //   children: [
              //     _longImage(),
              //     _shrtImage(),
              //     _longImage(),
              //   ],
              // )
            ],
          )
        ],
      ),
    );
  }

  Widget _longImage() {
    return Container(
      padding: EdgeInsets.only(top: 15.0),
      height: 400.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
                height: 150.0,
                width: MediaQuery.of(context).size.width / 2 - 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/image/image4.png",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                height: 150.0,
                width: MediaQuery.of(context).size.width / 2 - 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/image/image4.png",
                      ),
                      fit: BoxFit.cover),
                ),
              )
            ],
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 15.0, right: 15.0),
                height: 300.0,
                width: MediaQuery.of(context).size.width / 2 - 30,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/image/image4.png",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

// "assets/image/cone.jpeg",
  Widget _shrtImage() {
    return Container(
      height: 200.0,
      width: 100.0,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              "assets/image/image4.png",
            ),
            fit: BoxFit.cover),
      ),
    );
  }
}
