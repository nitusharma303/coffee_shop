import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BottomNavBar extends StatefulWidget{
  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}
class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return
    Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow:[BoxShadow(
          color: Colors.white70,
          spreadRadius: 1,
          blurRadius: 4
        ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 34),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.home,color:Colors.deepOrangeAccent ,size:30,),
            Icon(Icons.heart_broken_rounded,color: Colors.black26,),
            Icon(Icons.shopping_bag,color: Colors.black26,),
            Icon(Icons.notifications,color: Colors.black26,),
          ],
        ),
      ),
    );
  }
}