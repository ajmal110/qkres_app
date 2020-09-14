import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qkres_app/components/categories.dart';
import 'package:carousel_slider/carousel_slider.dart';
//this page is the body of the home page

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
                padding: const EdgeInsets.only(top: 7.0, left: 20),
                child: Text(
                  'QkRes',
                  textAlign: TextAlign.left,

                  style: TextStyle(
                    color: Colors.grey[700],
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w500,
                    fontSize: 30.0,
                  ),),
              ),
              SizedBox(height: 10,),
              Categories(),
              Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(5),
                height: 300,
                width: 400,
                decoration: BoxDecoration(color: Color(0xFFA4D4AE),
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.topCenter,
                      child: Text('ABOUT US',
                        style: TextStyle(fontFamily: 'Economica',
                            color: Colors.grey[800],
                            fontSize: 40.0),
                        // textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Image.asset(
                          'images/hypothesis.png',
                          height: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 30.0, left: 30),
                      child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            'We offer quick and reliable solutions and services for Research & Development based requirements. We procure instruments for different engineering and science departments, research labs and startups.',
                            style: TextStyle(fontFamily: 'Economica',
                                color: Colors.grey[800],
                                fontSize: 20.0),
                            softWrap: true,
                            textAlign: TextAlign.center,
                          )),
                    ),
                  ],
                ),

              ),
              Container(),
            ],
          ),
        ]);
  }

// 0xFFc8ede6
}
