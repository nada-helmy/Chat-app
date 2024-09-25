import 'package:flutter/material.dart';

import '../../../core/themes/Mycolors.dart';

class LandingPage extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<LandingPage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {

    double height =MediaQuery.of(context).size.height;

    return SafeArea(child: Scaffold(

      body:Container(
        color: Mycolors.black,
        child: Column(
          children: [
            SizedBox(height: height*.08,),
            Text('Welcome to ChatApp',style: TextStyle(
                color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold
            )),
            SizedBox(height: height*.09,),
            Image.asset('assets/images/whatsapp-dark-mode.webp'),
            SizedBox(height: height*.15,),
          ],
        ),
      )
    ));
  }

}
