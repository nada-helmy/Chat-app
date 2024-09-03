import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'home';

  @override
  State<HomePage> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //double width =MediaQuery.of(context).size.width;
    double height =MediaQuery.of(context).size.height;
    return SafeArea(child: Scaffold(

      body:Container(
        color: Colors.black,
        child: Column(
          children: [
            SizedBox(height: height*.03,),
            Text('Welcome to WhatsApp',style: TextStyle(
                color: Colors.white,
              fontSize: 35
            )),
            SizedBox(height: height*.09,),
            Image.asset('assets/images/kilua.jpg'),
            SizedBox(height: height*.1,),
            Text('Tab to accept our policies',style: TextStyle(
                color: Colors.white,
                fontSize: 20
            )),
            SizedBox(height: height*.01,),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                    Color(0xff415b5b)),
              ),
                onPressed: (){},
                child: Text('Agree and Continue',style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
                ),))
          ],
        ),
      )
    ));
  }

}
