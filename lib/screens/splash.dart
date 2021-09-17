import 'package:flutter/material.dart';
import 'package:issaq_project/screens/Home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  @override
  void initState() {
    _checkUserSementara();
    super.initState();
     
  }
  Widget build(BuildContext context) {
   return Scaffold(
      body: Center(
        child: Text('Loading'),
      ),
    );
  }
   void _checkUserSementara() async{

     await Future.delayed(Duration(seconds:2));

     //navigator
     Navigator.push(context, MaterialPageRoute(builder : (context) => Home()));
   
 } 

}

