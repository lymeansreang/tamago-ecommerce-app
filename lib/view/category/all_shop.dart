import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tamago/color.dart';
import 'package:tamago/models/ProductModel.dart';
import 'package:tamago/view/category/widgets/view_all.dart';
import 'package:tamago/view/home/home.dart';
import 'package:tamago/view/widgets/bottom_navigation.dart';

class MyAllShop extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('All Shop')),
      body: Container(
        child: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
               return ViewAll();
            },
        ),
      ),
      // bottomNavigationBar: BottomNav()
    );
  }
}


