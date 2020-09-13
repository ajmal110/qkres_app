library firebase_auth_platform_interface;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qkres_app/components/rounded_button.dart';
import 'package:qkres_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:qkres_app/screens/home_page.dart';
import 'package:firebase_core/firebase_core.dart';



class RegistrationScreen extends StatefulWidget {
  static String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> with SingleTickerProviderStateMixin {
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
  String email;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
//      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Center(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.grey[300], Colors.white])),)),
         Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
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
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        'QkRes',
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
                height: 8.0,
              ),
              TextField(
                obscureText: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  password = value;
                  //Do something with the user input.
                },
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.orange[200],
                    fontFamily: 'Montserrat',),
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrangeAccent, width: 1.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepOrangeAccent, width: 2.0),
                    borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  ),
                ),
              ),
              SizedBox(
                height: 24.0,
              ),
              RoundedButton(title: 'Register', colour: Colors.redAccent, onPressed: () async {
            try{
              final newUser = await _auth.createUserWithEmailAndPassword(email: email, password: password);
              if (newUser !=null)
                {
                  Navigator.pushNamed(context, HomeScreen.id);
                }

            }
            catch(e){
              print(e);
            }
              })


            ],
          ),
        ),
      ],),
    );
  }
}
