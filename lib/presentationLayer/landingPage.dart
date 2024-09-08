import 'package:flutter/material.dart';

import '../styles/Mycolors.dart';

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
            Text('Welcome to WhatsApp',style: TextStyle(
                color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold
            )),
            SizedBox(height: height*.09,),
            Image.asset('assets/images/whatsapp-dark-mode.webp'),
            SizedBox(height: height*.15,),
            Text('Tab to accept our policies',style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              fontWeight: FontWeight.w600
            )),
            SizedBox(height: height*.01,),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(12),
                  backgroundColor: Color(0xff415b5b),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
              onPressed: (){

                },
                child: Text('Agree and Continue',style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,fontWeight: FontWeight.w600
                ),))
          ],
        ),
      )
    ));
  }

}
