import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:qkres_app/components/body.dart';
class HomeScreen extends StatefulWidget {
  static String id = 'home_page';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _auth = FirebaseAuth.instance;
  FirebaseUser loggedInUser;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser () async{
    try {
      final user = await _auth.currentUser();
      if (user != null){
        loggedInUser = user;
        print(loggedInUser.email);
      }}
      catch(e){
      print(e);
      }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body()
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10),
        child: Image.asset("images/Qres.logo.png",),
      ),


      backgroundColor: Colors.grey[300],
      elevation: 0,
      actions: <Widget>[Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: IconButton(icon: Icon(Icons.search,
        size: 30,
            color: Colors.deepOrangeAccent), onPressed: (){
              }),
      ),
        SizedBox(width: 10,),
        Padding(
          padding: const EdgeInsets.only(right: 3,top: 8),
          child: IconButton(icon: Icon(MaterialCommunityIcons.logout_variant,
          size: 30,
          color: Colors.deepOrangeAccent,), onPressed: (){
            _auth.signOut();
            Navigator.pop(context);
          }),
        ),
        SizedBox(width: 10,)
      ],

    );
  }
}
