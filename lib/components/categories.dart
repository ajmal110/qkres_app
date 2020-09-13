import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = ["About Us","Facilities and Services", "Material Resources","Business Opportunities"];
  int selectedIndex =0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(height: 25,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context,index )=> buildCategory(index)),
      ),
    );
  }

  Widget buildCategory(int index) => GestureDetector(
    onTap: (){
      setState(() {
        selectedIndex = index;
      });
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        children: [
          Text(categories[index],
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color:selectedIndex == index ? Colors.grey[800] : Colors.grey[500],
            ),),
          Container(
            margin: EdgeInsets.only(top: 5),
            height: 2,
            width: 35,
            color:selectedIndex == index ? Colors.grey[700] : Colors.transparent,
          )
        ],
      ),
    ),
  );
}
