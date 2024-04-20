import 'package:flutter/material.dart';
import 'package:tamago/color.dart';

class Myappbar extends StatelessWidget implements PreferredSizeWidget{
  const Myappbar({
    required GlobalKey<ScaffoldState> key,
  }) : _key = key;

  final GlobalKey<ScaffoldState> _key;


  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: primary,
      leading: Container(
        padding: const EdgeInsets.only(left: 15),
        child: SizedBox(
          width: 40,
          height: 40,
          child: Image.asset('assets/images/logo.png',),
        ),
      ),
      // title: const Text("TamaGo", style: TextStyle(
      //   fontWeight: FontWeight.bold,),
      // ),
      actions: [
        Icon(Icons.search,color: black,),
        const SizedBox(width: 10,),
        Icon(Icons.shopping_cart_outlined, color: black),
        const SizedBox(width: 10,),
      ],
    );

  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
  }
