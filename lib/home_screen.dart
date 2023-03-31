import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:convexbottom/product_screen.dart';
import 'package:flutter/material.dart';

import 'favorite_screen.dart';


class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);


  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
// you are calling home screen inside home screen which result in infinite recursion
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
        body: Center(
      child: Text('Home Page',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.greenAccent),),
    ),

    );

  }
}