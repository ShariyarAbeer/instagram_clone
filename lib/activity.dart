import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({Key key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "Activity",
          style: TextStyle(
              fontFamily: "Roboto",
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
              color: Colors.black),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 15.0, top: 15.0),
                    height: 70.0,
                    width: 70.0,
                    child: Stack(
                      children: [
                        Container(
                          height: 50.0,
                          width: 50.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/image/player-5.png"),
                                  fit: BoxFit.cover)),
                        ),
                        Positioned(
                          left: 30.0,
                          child: Container(
                            height: 20.0,
                            width: 20.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Colors.red),
                            child: Center(
                                child: Text(
                              "17",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12.0),
                            )),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Follow Requests",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                              fontSize: 14.0),
                        ),
                        Text(
                          "Approve or Ignore requests",
                          style: TextStyle(
                              color: Colors.grey,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "Today",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              _itemRequst(
                  "assets/image/player-6.png",
                  "rafi_ahamed, ",
                  "requested to follow you.",
                  "18h",
                  "Confirm",
                  "",
                  false,
                  false),
              _itemRequst("assets/image/player-1.png", "reza_ali, ",
                  "is new on Instagram. ", "21h", "Follow", "", false, true),
              SizedBox(
                height: 15.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  "This Week",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w500,
                      fontSize: 15.0),
                ),
              ),
              _itemRequst(
                  "assets/image/player-3.png",
                  "mahatab_hasan, ",
                  "who you might know, is on Instagram. ",
                  "3d",
                  "Follow",
                  "",
                  false,
                  true),
              _itemRequst(
                  "assets/image/player-2.png",
                  "abeer_shariyar, ",
                  "like your comment: Ora kara ",
                  "3d",
                  "Follow",
                  "assets/image/image4.png",
                  true,
                  true),
              _itemRequst(
                  "assets/image/player-3.png",
                  "hasan_547, ",
                  "requested to follow you. ",
                  "5d",
                  "Follow",
                  "",
                  false,
                  false),
              _itemRequst(
                  "assets/image/player-3.png",
                  "dipu_islam, ",
                  "commented: @_sadil ohho So sad of you ",
                  "7w",
                  "Follow",
                  "assets/image/image3.jpg",
                  true,
                  true),
              _itemRequst("assets/image/player-3.png", "tanvie_cap, ",
                  "is new on Instagram. ", "7w", "Follow", "", false, true),
            ],
          )
        ],
      ),
    );
  }

  Widget _itemRequst(
      imageUrl, name, text, time, followText, postImage, bool ispost, isfrnd) {
    return Container(
      padding:
          EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 45.0,
                width: 45.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22.5),
                    image: DecorationImage(
                        image: AssetImage(imageUrl), fit: BoxFit.cover)),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 10.0,
                ),
                child: Container(
                  width: isfrnd
                      ? MediaQuery.of(context).size.width * 0.5
                      : MediaQuery.of(context).size.width * 0.3,
                  child: RichText(
                    text: TextSpan(
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Roboto",
                            fontSize: 14.0),
                        children: [
                          TextSpan(
                              text: name,
                              style: TextStyle(fontWeight: FontWeight.w500)),
                          TextSpan(text: text),
                          TextSpan(
                              text: time, style: TextStyle(color: Colors.grey)),
                        ]),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              ispost
                  ? Text("")
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0.0,
                        minimumSize: Size(80.0, 30.0),
                      ),
                      onPressed: () {},
                      child: Text(followText),
                    ),
              SizedBox(
                width: 5.0,
              ),
              isfrnd
                  ? Text("")
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        side: BorderSide(
                          width: 1.0,
                          color: Colors.grey[300],
                        ),
                        elevation: 0.0,
                        minimumSize: Size(80.0, 30.0),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Delete",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            fontSize: 15.0),
                      ),
                    ),
              ispost && ispost
                  ? Container(
                      margin: EdgeInsets.only(right: 15.0),
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(postImage), fit: BoxFit.cover)),
                    )
                  : Text(""),
            ],
          )
        ],
      ),
    );
  }
}
