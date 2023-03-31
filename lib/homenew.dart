import 'dart:io';

import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:convexbottom/product_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'favorite_screen.dart';
import 'home_screen.dart';

class HomeNew extends StatefulWidget {
  HomeNew({Key? key}) : super(key: key);

  @override
  State<HomeNew> createState() => _HomeNewState();
}

class _HomeNewState extends State<HomeNew> {
  int selectedPage = 0;

  final _pageNo = [Home(), Favorite(), ProductPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: _pageNo[selectedPage],
        bottomNavigationBar: ConvexAppBar(
            items: [
              TabItem(icon: Icons.home, title: 'Home'),
              TabItem(icon: Icons.favorite, title: 'Favorite'),
              TabItem(icon: Icons.shopping_cart, title: 'Cart'),
            ],
            initialActiveIndex: selectedPage,
            onTap: (int index) {
              setState(
                () {
                  selectedPage = index;
                },
              );
            }));
  }
}
