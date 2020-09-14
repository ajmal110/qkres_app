import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qkres_app/components/rounded_button.dart';
import 'package:qkres_app/constants.dart';
import 'package:qkres_app/screens/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with SingleTickerProviderStateMixin {
  AnimationController controller;
  @override
  void initState () {
    super.initState();
    controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );
    controller.forward();
    controller.addListener(() {
      setState(() {});
      print(controller.value);
    });
  }
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  String email;
  String password;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:

      ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Stack(
          children: <Widget> [
            Center(
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFFE7F0C3), Colors.white])),)),

            Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 45.0),
                  child: Row(
                    children: <Widget>[
                      Hero(
                        tag: 'logo',
                        child: Center(
                          child: Container(
                            child: Image.asset('images/Qres.logo.png'),
                            height: 80.0,
                          ),
                        ),
                      ),
                       Padding(
                          padding: const EdgeInsets.only(left: 2.0),
                          child: Text(
                            'kRes',
                            textAlign: TextAlign.left,

                            style: TextStyle(
                              letterSpacing: 1.2,
                              color: Colors.grey[800].withOpacity(controller.value),
                              fontFamily: 'Montserrat',
                              fontSize: 70.0,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
//              Container(
//                height: 200.0,
//                child: Image.asset('images/home.jpg'),
//              ),
                SizedBox(
                  height: 48.0,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    email = value;
                    //Do something with the user input.
                  },
                  decoration: kTextFiledDecoration.copyWith(hintText: 'Enter your email', ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                TextField(
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    password = value;
                    //Do something with the user input.
                  },
                  decoration:  kTextFiledDecoration.copyWith(hintText: 'Enter your password'),
                ),
                SizedBox(
                  height: 24.0,
                ),
              RoundedButton(title: 'Log in', colour: Colors.deepOrangeAccent, onPressed: ()  async {
                setState(() {
                  showSpinner =true;
                });
                    try {
                      final newUser = await _auth.signInWithEmailAndPassword(
                          email: email, password: password);
                      if (newUser != null) {
                        Navigator.pushNamed(context, HomeScreen.id);
                      }

                      setState(() {
                        showSpinner = false;
                      });
                    }
                      catch(e){
                  print(e);
              }
              })
                        ],
                      ),
                    ),
                  ],),
                ),
              );
            }
          }



//Container(
//decoration: BoxDecoration(
//color:  Colors.transparent,
//image: DecorationImage(
//image: AssetImage('images/background.jpg'),
//fit: BoxFit.fitHeight,
//),
//),
//),