import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qkres_app/components/categories.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.grey[300], Colors.white])),),
       Column(
         crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:7.0,left: 20),
            child: Text(
              'QkRes',
        textAlign: TextAlign.left,

        style: TextStyle(
            color: Colors.grey[700],
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w500,
            fontSize: 25.0,
            ),),
          ),
          SizedBox(height: 10,),
          Categories(),
          Co
        ],
      ),
    ]);
  }
}

