import 'package:flutter/material.dart';

import 'presentationLayer/landingPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute:LandingPage.routeName ,
        routes: {
          LandingPage.routeName:(context)=>LandingPage(),
        }
    );
  }
}

