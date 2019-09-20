import 'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        
        body: Column(
          children: <Widget>[
            Container(
              child: Image.asset('images/j1.jpg'),
            ),
            Container(
              child: Text('Username'),
            )
            //  Image.network('https://images.pexels.com/photos/1236701/pexels-photo-1236701.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
          ],
        ), 
        
      ),
    );
  }
}