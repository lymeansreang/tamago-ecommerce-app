import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tamago/color.dart';
import 'package:tamago/view/home/home.dart';
import 'package:tamago/view/widgets/bottom_navigation.dart';

import 'widgets/detail_card.dart';

class MyDetail extends StatelessWidget {
  const MyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail'),),
      body: Container(
        child: DetailCard(),
      ),
      // bottomNavigationBar: BottomNav()
    );
  }
}


