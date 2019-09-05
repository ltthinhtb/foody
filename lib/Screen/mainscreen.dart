import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'LoginPage.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            SizedBox(width: 7.0),
            IconButton(
                icon: Icon(Icons.home, size: 24.0),
                onPressed: null),
            IconButton(
                icon: Icon(Icons.label, size: 24.0),
                onPressed: null),
            IconButton(
              icon: Icon(Icons.notifications,size: 24.0),
              onPressed: null,
            ),
            IconButton(icon: Icon(Icons.person, size: 24.0),
                onPressed:(){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
                } ),
            SizedBox(width: 7.0)
          ],
        ),
      ),
    );
  }
}
