import 'package:flutter/material.dart';
import 'package:tamago/color.dart';
import 'package:tamago/view/widgets/bottom_navigation.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40), // Adjusted padding here
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: black,
                  ),
                  child: Image.asset(
                    'assets/images/profile.png',
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Ly Meansreang',
                  style: TextStyle(
                    fontFamily: "Mochi",
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Email: sreang@gmail.com',
                  style: TextStyle(
                    fontFamily: "Mochi",
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
