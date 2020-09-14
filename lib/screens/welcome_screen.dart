import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qkres_app/screens/registration_screen.dart';
import 'package:qkres_app/screens/login_screen.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:qkres_app/components/rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> with TickerProviderStateMixin {
  AnimationController controller;
  AnimationController controllerA;
  @override
  void initState () {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
      upperBound: 65.0
    );
    controller.forward();
    controller.addListener(() {
      setState(() {
      });
      print(controller.value);
      
    });
    controllerA =AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );
    controllerA.forward();
    controllerA.addListener(() {
      setState(() {
      });
      print(controllerA.value);

    });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: Stack(
        children: <Widget> [
      Center(
      child: Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFFE7F0C3), Colors.white])),)),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TypewriterAnimatedTextKit(
                  speed: Duration(milliseconds: 400),
                  isRepeatingAnimation: false,
                  text: ['WELCOME TO'],
                textAlign: TextAlign.center,
                textStyle: TextStyle(
                  letterSpacing: 7.0,
                  color: Colors.grey[600],
                  fontFamily: 'Montserrat',
                  fontSize: 25.0,
                ),),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75.0),
                  child: Row(
                    children: <Widget>[
                      Hero(
                        tag: 'logo',
                        child: Center(
                          child: Container(
                            child: Image.asset('images/Qres.logo.png'),
                            height: controller.value,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 3.0),
                        child: Hero(
                          tag:'title',
                          child: Text(
                            'kRes',
                            textAlign: TextAlign.left,

                            style: TextStyle(
                              letterSpacing: 1.2,
                              color: Colors.grey[800].withOpacity(controllerA.value),
                              fontFamily: 'Montserrat',
                              fontSize: 50.0,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:1),
                  child: Container(
                      child: Image.asset('images/circuit.png'),
                      height: 70),),
                Row(
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.only(left:65,right: 74),
                      child: Container(
                          child: Image.asset('images/inventor.png'),
                          height: 70),),
                    Padding(
                      padding: const EdgeInsets.only(left: 24),
                      child: Container(
                          child: Image.asset('images/science.png'),
                          height: 70),),

                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                      child: Image.asset('images/atom.png'),
                      height: 70),),
                SizedBox(
                  height: 60.0,
                ),
                Container(

                  child: RoundedButton(title: 'Log in', colour: Colors.deepOrangeAccent, onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.id);
                    //Go to registration screen.
                  },),
                  ),
                RoundedButton(title: 'Register', colour: Colors.redAccent, onPressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.id);
                  //Go to registration screen.
                },),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


