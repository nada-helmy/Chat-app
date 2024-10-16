import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'features/auth/presentation/views/login_screen.dart';
import 'features/auth/presentation/views/register_screen.dart';
import 'features/home/presentation/views/home.dart';
import 'features/splash_screen.dart';
import 'firebase_options.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
       options: DefaultFirebaseOptions.currentPlatform);
    //FirebaseAuth mAuth = FirebaseAuth.getInstance();

    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        initialRoute:SplashScreen.routeName ,
        routes: {
          SplashScreen.routeName:(context)=>SplashScreen(),
          LoginScreen.routeName:(context)=>LoginScreen(),
          RegisterScreen.routeName:(context)=>RegisterScreen(),
          Home.routeName:(context)=>Home()
        }
    );
  }
}

