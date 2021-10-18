import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foody/LoginScreen.dart';

Future main() async{
   //SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer(
    //     Duration(seconds: 3),
    //     () => Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(backgroundColor: Colors.red,
      body: Stack(
        children: [
          Positioned(child: Container(width: size.width, child: Image.asset('assets/bg1.jpg',fit: BoxFit.cover,))),
            Positioned(bottom:01, left:3,child: Container(width: size.width, child: Image.asset('assets/bg2.png',fit: BoxFit.cover,))),
        
        
          Positioned(
              top: size.height * 0.45,
              right: 50,left: 50,
              child: Container(child: Column(
                children: [
                  Image.asset('assets/logo.png'),
                  SizedBox(height: size.height*0.01,),
                  Text('Made with ♥ by Partibha',style: TextStyle(fontSize: size.height*0.023,fontWeight: FontWeight.w400),)
                ],
              ))),



        ],
      ),
    );
  }
}
