import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// This file contains the widgets about the slider in "about us" page
class Objective extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          CarouselSlider(height: 310,

            enlargeCenterPage: true,
            aspectRatio: 16/9,
            autoPlay: true,
            autoPlayAnimationDuration: Duration(seconds: 2),
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            viewportFraction: .9,
            autoPlayInterval: Duration(seconds: 10),


            items: [
              Container(
                      margin: EdgeInsets.only(bottom: 15, top: 5,left: 10, right: 10),
                  padding: EdgeInsets.all(5),
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(color: Color(0xFFE7F0C3),
                  borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                  children: <Widget>[

                  Padding(
                  padding: const EdgeInsets.only(right: 30.0, left: 30),
                  child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text('OBJECTIVE',
                      style: TextStyle(fontFamily: 'Economica',
                          color: Colors.grey[800],
                          fontSize: 25.0),),
                    ),
                       Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset(
                            'images/microscope.png',
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                        "Are you one of passionate researchers who is struck in between your research ?",
                        style: TextStyle(fontFamily: 'Economica',
                        color: Colors.grey[800],
                        fontSize: 15.0),
                        softWrap: true,
                        textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          "Do you wish to have an expert's opinion on your queries??",
                          style: TextStyle(fontFamily: 'Economica',
                              color: Colors.grey[800],
                              fontSize: 15.0),
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                          " Do you want to purchase your research equipment from a trusted vendor ?",
                          style: TextStyle(fontFamily: 'Economica',
                              color: Colors.grey[800],
                              fontSize: 15.0),
                          softWrap: true,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )),
                  ),
                  ],
                  )
                  ),
              Container(
                  margin: EdgeInsets.only(bottom: 15, top: 5,left: 10, right: 10),
                  padding: EdgeInsets.all(5),
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(color: Color(0xFFE7F0C3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0, left: 30),
                        child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text('WHY QkRes?',
                                    style: TextStyle(fontFamily: 'Economica',
                                        color: Colors.grey[800],
                                        fontSize: 25.0),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset(
                                    'images/science.png',
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(top:6.0, bottom: 3),
                                  child: Text(
                                    ">> Timely availability of resources",
                                    style: TextStyle(fontFamily: 'Economica',
                                        color: Colors.grey[800],
                                        fontSize: 15.0),
                                    softWrap: true,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    ">> Timely Design Finalization",
                                    style: TextStyle(fontFamily: 'Economica',
                                        color: Colors.grey[800],
                                        fontSize: 15.0),
                                    softWrap: true,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    ">> Timely pilot plant or project trials setup readiness for Analysis",
                                    style: TextStyle(fontFamily: 'Economica',
                                        color: Colors.grey[800],
                                        fontSize: 15.0),
                                    softWrap: true,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    ">> On Time Design modification if required in setup",
                                    style: TextStyle(fontFamily: 'Economica',
                                        color: Colors.grey[800],
                                        fontSize: 15.0),
                                    softWrap: true,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  )
              ),
              Container(
                  margin: EdgeInsets.only(bottom: 15, top: 5,left: 10, right: 10),
                  padding: EdgeInsets.all(5),
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(color: Color(0xFFE7F0C3),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: <Widget>[

                      Padding(
                        padding: const EdgeInsets.only(right: 30.0, left: 30),
                        child: Container(
                            alignment: Alignment.center,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Text('How do we provide support:',
                                    style: TextStyle(fontFamily: 'Economica',
                                        color: Colors.grey[800],
                                        fontSize: 25.0),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Image.asset(
                                    'images/inventor.png',
                                    height: 50,
                                    fit: BoxFit.cover,
                                  ),
                                ),


                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    "1. Fill the google form with the required details and attachments for the solution you are looking for.",
                                    style: TextStyle(fontFamily: 'Economica',
                                        color: Colors.grey[800],
                                        fontSize: 15.0),
                                    softWrap: true,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    " 2. After reviewing the request, We will update the status by mail.",
                                    style: TextStyle(fontFamily: 'Economica',
                                        color: Colors.grey[800],
                                        fontSize: 15.0),
                                    softWrap: true,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    " 3. If agreed, we will send the quotation for the same.",
                                    style: TextStyle(fontFamily: 'Economica',
                                        color: Colors.grey[800],
                                        fontSize: 15.0),
                                    softWrap: true,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(3.0),
                                  child: Text(
                                    " 4. The product will be delivered at your doorstep!!",
                                    style: TextStyle(fontFamily: 'Economica',
                                        color: Colors.grey[800],
                                        fontSize: 15.0),
                                    softWrap: true,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    ],
                  )
              ),
            ], )
        ],
      ),
    );
  }
}
