import 'package:flutter/material.dart';
import 'package:tamago/color.dart';
import 'package:tamago/view/account/profile.dart';

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
        const SizedBox(width: 10,),
        IconButton( icon: Icon(Icons.person,color: black,),  onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyProfile())
          );
        },),
        const SizedBox(width: 10,),
      ],
    );

  }
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
  }
