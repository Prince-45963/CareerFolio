import 'package:careerfolio/ui/about/about.dart';
import 'package:flutter/material.dart';
import 'package:shaped_bottom_bar/models/shaped_item_object.dart';
import 'package:shaped_bottom_bar/shaped_bottom_bar.dart';
import 'package:shaped_bottom_bar/utils/arrays.dart';

import '../../utils/cusor_painter.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var selectedItem = 0;
  var navigationItem = [
    ShapedItemObject(iconData: Icons.favorite_border, title: "Interest"),
    ShapedItemObject(iconData: Icons.code, title: "Skills"),
    ShapedItemObject(iconData: Icons.person, title: "About"),
    ShapedItemObject(iconData: Icons.school_outlined, title: "Education"),
    ShapedItemObject(iconData: Icons.phone_android_outlined, title: "Projects")
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: ShapedBottomBar(
            bottomBarTopColor: Color(0xFF3B9F9A),
            backgroundColor: Color(0xFF83C2C0),
            iconsColor: Colors.white,
            listItems: navigationItem,
            onItemChanged: (position) {
              setState(() {
                selectedItem = position;
              });
            },
            textStyle: TextStyle(color: Colors.white, fontSize: 15),
            shape: ShapeType.CUSTOM,
            customShape: CustomPaint(
              painter: CusorPainter(),
            )),

        body: About(),
      ),
    );
  }
}
