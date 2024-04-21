import 'package:flutter/material.dart';

import '../../../color.dart';

class CatagoryTitle extends StatelessWidget {
  const CatagoryTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Category",
          style: TextStyle(
            fontSize: 24,
            fontFamily: 'Titan',
            color: secondary,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(right: 15),
            child: TextButton(onPressed: (){},
                child: Text("View all",
                  style: TextStyle(
                    color: mgrey,
                  ),)
            )
        )
      ],
    );
  }
}