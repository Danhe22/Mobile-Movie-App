import 'package:flutter/material.dart';
import 'package:mobile_movie_app/Theme/theme.dart';
import 'package:mobile_movie_app/screens/home_screen.dart';
import 'package:mobile_movie_app/screens/login_screen.dart';
import 'package:mobile_movie_app/screens/signup_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Mobile Movie',
        theme: miTema,
        initialRoute: 'login',
        routes: {
          'login'    : ( BuildContext context ) => LoginScreen(),
          'signup'   : ( BuildContext context ) => SignupScreen(),
          'home'     : ( BuildContext context ) => HomeScreen()
        },
        
      );
    
  }
}