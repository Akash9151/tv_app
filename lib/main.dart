import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tv_app/Dialogs.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tv_app/login/welcomePage.dart';
import 'package:tv_app/Tabs/settings.dart';
import 'package:tv_app/Tabs/Movies.dart' as Movies;
import 'dart:async';
import 'dart:convert';
import 'package:tv_app/Tabs/LiveTV.dart';
///import 'package:gradient_app_bar/gradient_app_bar.dart';

void main() {
  //debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        focusColor: Color(0x20737373),
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        primaryTextTheme: TextTheme(
            title: TextStyle(
                color: Colors.white
            ),
        ),
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  Dialogs dialogs = new Dialogs();
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}



class MyAppbar extends AppBar {

}
// Extend homepage AppBar onto other pages: https://www.youtube.com/watch?v=cLbNY2nCuYw



class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    //final GlobalKey _scaffoldKey = new GlobalKey();
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Fusion',
          style: GoogleFonts.orbitron(fontSize: 30),),
          centerTitle: true,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));}),
          IconButton(icon: Icon(Icons.star),onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));}),
          IconButton(icon: Icon(Icons.more_vert),onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage()));}),
        ],
      ),


      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 200.0,
              //flex: 5,
              child: Container(
                height: MediaQuery.of(context).size.height * 50,
                width: MediaQuery.of(context).size.width * 5,
                child: DrawerHeader(
                  decoration: new BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://akm-img-a-in.tosshub.com/indiatoday/images/story/201912/question-mark-2492009_960_720-770x433.jpeg?pv5oJxh5sDUOuQ5qkfukJz4UI44whxyD"),
                    fit: BoxFit.cover)),
                child: new Text('User',
                    style: TextStyle(color: Color(0x97FFFFFF),
                          fontSize: 30)
                  ),
                ),
              ),
            ),

            ListTile(
              title: Text("Movies",
              style: new TextStyle(
                fontSize: 15,
              )),
              trailing: Icon(Icons.movie),
                onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
              },
            ),

            ListTile(
              title: Text("Shows",
              style: new TextStyle(
                fontSize: 15,
              )),
              trailing: Icon(Icons.tv), onTap:() => Dialogs()
            ),

            ListTile(
              title: Text("Live TV",
                  style: new TextStyle(
                    fontSize: 15,
                  )),
              trailing: Icon(Icons.live_tv), onTap:() {Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
            }
            ),
          ],
        ),
      ),




      body: new Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[],
              )
    );
  }
}

