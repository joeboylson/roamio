import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:angles/angles.dart';

class Frame extends StatefulWidget {
  Frame({Key key, this.body}) : super(key: key);

  final Widget body;

  @override
  _Frame createState() => _Frame();
}

class _Frame extends State<Frame> {

  var scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    final _currentRoute = ModalRoute.of(context).settings.name;
    final _isHome = (_currentRoute == "/" || _currentRoute == "/home");


    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer (
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Home'),
              onTap: () => Navigator.pushNamed(context, '/home')
            ),
            ListTile(
              title: Text('B'),
              onTap: () => Navigator.pushNamed(context, '/b')
            ),
            ListTile(
              title: Text('C'),
              onTap: () => Navigator.pushNamed(context, '/c')
            ),
          ],
        )
      ),
      body: Stack(
        children: <Widget>[
          widget.body,
          _isHome ? Positioned(
            top: 168/2,
            left: -168/2 + 32,
            child: Transform.rotate(
              angle: Angle.fromDegrees(90).radians,
              child: Container(
                width: 168,
                height: 40,
                child: const Text(
                  'roamio',
                  style: TextStyle(
                    fontFamily: "Zilla Slab",
                    fontSize: 40
                  )
                ),
              ),
          )) : new Container(width: 0, height: 0),
          Positioned(
            left: 16,
            top: _isHome ? 200 : 24,
            child: InkWell (
              child: Icon(Icons.menu),
              onTap: () => scaffoldKey.currentState.openDrawer()
            ),
          ),
        ],
      )
    );
  }
}