import 'package:flutter/material.dart';

import 'presentationLayer/homePage.dart';

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
        initialRoute:HomePage.routeName ,
        routes: {
          HomePage.routeName:(context)=>HomePage(),
        }
    );
  }
}

