import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';







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
      appBar: AppBar(
        title: Text('HOME'),
        backgroundColor: Colors.grey[400],
        actions: <Widget>[
          IconButton(icon: Icon(Icons.close), onPressed: (){
            _auth.signOut();
            Navigator.pop(context);
          })
        ],

      ),
      body: Stack(
    children: <Widget>[
    Center(
        child: Container(
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Colors.grey[300], Colors.white])),)),
])
    );
  }
}
