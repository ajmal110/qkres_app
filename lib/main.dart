import 'package:flutter/material.dart';
import 'package:qkres_app/screens/home_page.dart';
import 'package:qkres_app/screens/welcome_screen.dart';
import 'package:qkres_app/screens/login_screen.dart';
import 'package:qkres_app/screens/registration_screen.dart';



void main() => runApp(FlashChat());

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute:HomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        HomeScreen.id: (context) => HomeScreen(),

      }
    );
  }
}
