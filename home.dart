import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';

myapp() {
  myprint() {
    Fluttertoast.showToast(
        msg: "Akanksha Singh",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.grey,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  like() {
    Fluttertoast.showToast(
        msg: "Liked",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  var mybody = Container(
    width: double.infinity,
    height: double.infinity,
    color: Colors.blueAccent.shade100,
    alignment: Alignment.center,
    margin: EdgeInsets.all(5),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: 300,
          height: 150,
          margin: EdgeInsets.all(50),
          //color: Colors.blue.shade200,
          // padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: Colors.pink.shade100,
              width: 3,
            ),
            color: Colors.deepPurple,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "Akanksha Singh",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.mail_outline,
                    color: Colors.yellow.shade600,
                  ),
                  Text(
                    " aksg530@gmail.com",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        InkWell(
          onTap: myprint,
          onDoubleTap: like,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.pink.shade100,
                width: 3,
              ),
              color: Colors.deepPurple,
              image: DecorationImage(
                image: NetworkImage(
                    "https://github.com/Uni-wv/flutter_layout_app/raw/master/akanksha.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.topCenter,
            width: 100,
            height: 100,
            //margin: EdgeInsets.all(20),
          ),
        ),
      ],
    ),
  );

  var browse = Icon(Icons.open_in_browser);
  var time = Icon(Icons.timeline);
  var more = Icon(Icons.more_horiz);

  browsepress() {
    print("browse another profile photo... ");
    Fluttertoast.showToast(
        msg: "Edit",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.purple,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  timepress() {
    print("See Your TimeLine...");
    Fluttertoast.showToast(
        msg: "TimeLine",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.purple,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  morepress() {
    print("More Options...");
    Fluttertoast.showToast(
        msg: "More Option",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.purple,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  var mybrowsebutton = IconButton(
    icon: browse,
    onPressed: browsepress,
  );
  var mytimebutton = IconButton(
    icon: time,
    onPressed: timepress,
  );
  var mymorebutton = IconButton(
    icon: more,
    onPressed: morepress,
  );

  var Emer = FlutterStatusbarcolor.setStatusBarColor(
    Colors.deepPurple,
  );

  var mylogo = Image.network(
      'https://github.com/Uni-wv/flutter_layout_app/raw/master/logo.jpg');

  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        leading: mylogo,
        actions: <Widget>[
          mybrowsebutton,
          mytimebutton,
          mymorebutton,
        ],
        backgroundColor: Colors.blueGrey.shade300,
      ),
      body: mybody,
    ),
  );
}
