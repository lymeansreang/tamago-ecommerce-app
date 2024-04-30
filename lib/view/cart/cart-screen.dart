import 'package:flutter/material.dart';

import '../widgets/bottom_navigation.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Cart'),),
      body: Column(

      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
