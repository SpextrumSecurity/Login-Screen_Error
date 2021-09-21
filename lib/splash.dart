import 'package:flutter/material.dart';
import 'package:issaq_project/screens/auth/Login.dart';
import 'package:issaq_project/screens/home/Home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  @override
  void initState() {
    _checkUserSementara(false);
    super.initState();
     
  }
  Widget build(BuildContext context) {
   return Scaffold(
      body: Center(
        child: Image.asset('images/background-splash.png')
      ,),
    );
  }
   void _checkUserSementara(bool user) async{

     await Future.delayed(Duration(seconds:2));
    
     //navigator
     Navigator.pushReplacement(context, MaterialPageRoute(builder : (context) => user ? Home() : Login()));
   
 } 

}

