import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:qkres_app/components/body.dart';
import 'package:qkres_app/components/objectives.dart';
class HomeScreen extends StatefulWidget {
  static String id = 'home_page';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex;
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

    @override
    void initState() {
      super.initState();
      currentIndex = 0;
    }
  }
  changePage(int index){
    setState(() {
      currentIndex =index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body:

      Stack(
        children: <Widget>[
          Center(
              child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Color(0xFFE7F0C3), Colors.white])),)),
          Column(
          children: [
            Body(),
            SizedBox(height: 8),
            (currentIndex == 0)
                ? Objective()
                : (currentIndex == 1)
                ? Objective()
                : (currentIndex == 2)
                ? Objective()
                : Objective(),
          ],
        ),
    ],
      )
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(top: 10.0, left: 10),
        child: Image.asset("images/Qres.logo.png",),
      ),


      backgroundColor: Color(0xFFA4D4AE),
      elevation: 1,
      actions: <Widget>[
        // Padding(
        //   padding: const EdgeInsets.only(right:50 ,top: 8),
        //
        //   child: Text(
        //     'HEY!',
        //     textAlign: TextAlign.left,
        //     style: TextStyle(
        //       color: Colors.grey[700],
        //       fontFamily: 'Montserrat',
        //       fontWeight: FontWeight.w500,
        //       fontSize: 30.0,
        //     ),),
        // ),


        Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: IconButton(icon: Icon(Icons.search,
        size: 33,
            color: Color(0xFFFE9801)), onPressed: (){
              }),
      ),
        SizedBox(width: 10,),
        Padding(
          padding: const EdgeInsets.only(right: 3,top: 8),
          child: IconButton(icon: Icon(MaterialCommunityIcons.logout_variant,
          size: 33,
          color: Color(0xFFFE9801),), onPressed: (){
            _auth.signOut();
            Navigator.pop(context);
          }),
        ),
        SizedBox(width: 10,),

      ],

    );
  }
}
