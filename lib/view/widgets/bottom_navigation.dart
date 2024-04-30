import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:tamago/color.dart';
import 'package:tamago/view/cart/cart-screen.dart';
import 'package:tamago/view/home/home.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: primary,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
        child: GNav(
            backgroundColor: primary,
            color: black,
            activeColor: primary,
            tabBackgroundColor: secondary,
            onTabChange: (index){
              switch (index) {
                case 0: // Home tab
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyHomePage(title: "home"))
                  );
                  break;
                case 1: // Like tab
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MyCart())
                  );
                  break;
                case 2: // Search tab
                // Handle search tab action
                  break;
                case 3: // Account tab
                // Handle account tab action
                  break;
              }
            },
            gap:8,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(icon: Icons.home,text: 'Home',),
              GButton(icon: Icons.shopping_cart_outlined,text: 'Cart',),
              GButton(icon: Icons.search,text: 'Search',),
              GButton(icon: Icons.settings,text: 'Setting',),
            ]
        ),
      ),
    );
  }
}