import 'package:flutter/material.dart';

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
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:7.0),
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
          Categories()
        ],
      ),
    ]);
  }
}


class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["About Us","Facilities and Services", "Material Resources","Business Opportunities"];
  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 25,
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context,index )=> buildCategory(index)),
    );
  }

  Widget buildCategory(int index) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 12.0),
    child: Text(categories[index],
    style: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.bold
    ),),
  );
}
