// import 'dart:math';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new LoginPage()
    );
  }
}

 class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
      Animation<double> animation;
  AnimationController _controller;
  

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(vsync: this,duration: Duration(milliseconds: 3000));
    animation = Tween<double>(begin: 0,end: 30).animate(_controller)..addListener((){
      setState(() {
        
      });
    });
    _controller.forward();

  }



  @override
  Widget build(BuildContext context) {
    return Container(      
      child: Scaffold(                        
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Image.asset('images/rsz_j1.jpg',            
            fit: BoxFit.cover,
            color: Colors.cyan.shade600,
            colorBlendMode: BlendMode.darken,),
            Center(child: Text('Login to enjoy the journey',
            style: TextStyle(
              color: Colors.white,
              fontSize: animation.value, 
              height: animation.value/1.4,            
            ),
            ),
            ),
            Form(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Enter UserName',style: TextStyle(color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.left,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      decoration: InputDecoration(hintText: "UserName",
                      hintStyle: TextStyle(color: Colors.white60,
                      letterSpacing: 4.0,),
                      fillColor: Colors.pink[600],
                      focusColor: Colors.white,
                      ),
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.pink,                      
                    ),
                  ),
                  Text('Enter Passcode',
                  style:TextStyle(color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                  Padding(
                    padding: const EdgeInsets.all(20.0),                  
                    child: TextFormField(                    
                      decoration: InputDecoration(hintText: "PassWord", 
                      hintStyle: TextStyle(color: Colors.white60,
                      letterSpacing: 4.0),                                     
                      ),
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.pink,
                      obscureText: true,
                    ),
                  ),
                  RaisedButton(elevation: 6,color: Colors.greenAccent[700],               
                  highlightColor: Colors.yellow,
                  child: Text('Login'),
                  onPressed: (){},),
                ],
              ),),
          ],
        ),        
      ),
    );
  }

    @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
