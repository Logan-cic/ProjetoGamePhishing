import 'package:flutter/material.dart';
import 'package:mensage_screen/home/home_page.dart';
import 'package:mensage_screen/splash/splash_page.dart';

class AppWidget extends StatelessWidget{
  const AppWidget ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext){
    return MaterialApp(
      initialRoute: "/splash",   
      routes: {
        "/splash" : (context) => const SplashPage(),
        "/home" : (context) => const HomePage(),
      },  
    );
  }
}