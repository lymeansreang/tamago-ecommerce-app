import 'package:flutter/material.dart';

class CategoryName extends StatelessWidget {
  const CategoryName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text('Drink',
              style: TextStyle(
                fontFamily: 'Mochi',
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text('Food',
              style: TextStyle(
                fontFamily: 'Mochi',
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text('Snack',
              style: TextStyle(
                fontFamily: 'Mochi',
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        // Expanded(
        //   child: Padding(
        //     padding: EdgeInsets.only(left: 7),
        //     child: Text('Ice Cream',
        //       style: TextStyle(
        //         fontFamily: 'Mochi',
        //         fontSize: 11,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        // ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 15),
            child: Text('Mart',
              style: TextStyle(
                fontFamily: 'Mochi',
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 1),
            child: Text('Cosmetic',
              style: TextStyle(
                fontFamily: 'Mochi',
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}