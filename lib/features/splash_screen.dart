
import 'dart:async';

import 'package:flutter/material.dart';

import '../core/themes/my_colors.dart';
import 'auth/presentation/views/login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const String routeName = 'splash';

  @override
  State<SplashScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      // Navigate to another screen after 3 seconds
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {

    double height =MediaQuery.of(context).size.height;

    return SafeArea(child: Scaffold(

      body:Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: height*.08,),
            Text('Welcome to ChatApp',style: TextStyle(
                color: Mycolors.primary,
              fontSize: 35,
              fontWeight: FontWeight.bold
            )),
            SizedBox(height: height*.09,),
            Image.asset('assets/images/logo.png'),
            SizedBox(height: height*.15,),
          ],
        ),
      )
    ));
  }

}
