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
            padding: EdgeInsets.only(left: 22),
            child: Text('Shirt',
              style: TextStyle(
                fontFamily: 'Mochi',
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 17),
            child: Text('Jean',
              style: TextStyle(
                fontFamily: 'Mochi',
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text('Bag',
              style: TextStyle(
                fontFamily: 'Mochi',
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 7),
            child: Text('Shoes',
              style: TextStyle(
                fontFamily: 'Mochi',
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 1),
            child: Text('Jacket',
              style: TextStyle(
                fontFamily: 'Mochi',
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 4),
            child: Text('Short',
              style: TextStyle(
                fontFamily: 'Mochi',
                fontSize: 13,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}