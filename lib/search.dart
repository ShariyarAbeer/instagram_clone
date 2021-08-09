import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({Key key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
              child: Container(
                margin: EdgeInsets.all(5.0),
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[200]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      right: 5.0, left: 5.0, top: 0.0, bottom: 0.0),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        size: 30.0,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: BorderSide.none),
                      hintText: "Search",
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                    ),
                  ),
                ),
                //   ],
                // ),
              ),
            ),
            Column(
              children: [
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
      ),
    );
  }

  Widget _longImage() {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 1.0, bottom: 2.0),
                  height: 119.5,
                  width: MediaQuery.of(context).size.width / 3 - 1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/image/cactus.jpeg",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 1.0),
                  height: 119.5,
                  width: MediaQuery.of(context).size.width / 3 - 1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/image/window.jpeg",
                        ),
                        fit: BoxFit.cover),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  height: 240.5,
                  width: MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/image/cone.jpeg",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 1.0, top: 1.0),
              height: 119.5,
              width: MediaQuery.of(context).size.width / 3 - 1,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/image/image3.jpg",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 1.0, top: 1.0),
              height: 119.5,
              width: MediaQuery.of(context).size.width / 3 - 1,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/image/image4.png",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 1.0),
              height: 119.5,
              width: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/image/letter.jpeg",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Column(
              children: [
                Container(
                  height: 240.5,
                  width: MediaQuery.of(context).size.width -
                      MediaQuery.of(context).size.width / 3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/image/window.jpeg",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 1.0, bottom: 2.0),
                  height: 119.5,
                  width: MediaQuery.of(context).size.width / 3 - 1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/image/cactus.jpeg",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 1.0),
                  height: 119.5,
                  width: MediaQuery.of(context).size.width / 3 - 1,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          "assets/image/image3.jpg",
                        ),
                        fit: BoxFit.cover),
                  ),
                )
              ],
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 1.0, top: 1.0),
              height: 119.5,
              width: MediaQuery.of(context).size.width / 3 - 1,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/image/image4.png",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 1.0, top: 1.0),
              height: 119.5,
              width: MediaQuery.of(context).size.width / 3 - 1,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/image/cone.jpeg",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 1.0),
              height: 119.5,
              width: MediaQuery.of(context).size.width / 3,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/image/cactus.jpeg",
                    ),
                    fit: BoxFit.cover),
              ),
            ),
          ],
        ),
      ],
    );
  }

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
