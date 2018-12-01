import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/demo/appbar_demo.dart';
import 'package:flutter_app2/demo/bottomNavigationBar_Demo.dart';
import 'package:flutter_app2/demo/drawer_demo.dart';
import 'package:flutter_app2/demo/navigationbar_demo.dart';
import 'package:flutter_app2/demo/tab_demo.dart';
import 'model/post.dart';
import 'package:flutter_app2/demo/silver_demo.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Home(),
      routes: {
        '/about':(context) => Page(title: 'About'),
      },
      theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
            backgroundColor: Colors.grey[100],
            drawer: DrawerDemo(),
            appBar: AppBar(
              title: Text('MAXWORLD'),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () => debugPrint('Seatch is pressed'),
                  tooltip: 'Search',
                )
              ],
              elevation: 1.0,
              bottom: TabBar(
                unselectedLabelColor: Colors.black,
                indicatorColor: Colors.greenAccent,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.local_florist),),
                  Tab(icon: Icon(Icons.change_history),),
                  Tab(icon: Icon(Icons.directions_bike),),
                  Tab(icon: Icon(Icons.view_quilt),),
                ],
              ),
            ),
            body: TabDemo(),
            bottomNavigationBar: BottomNavigationBarDemo()));
  }
}
