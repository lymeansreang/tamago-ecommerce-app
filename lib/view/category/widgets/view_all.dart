import 'package:flutter/material.dart';
import 'package:tamago/color.dart';

class ViewAll extends StatelessWidget {
  const ViewAll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15,right: 15,left: 15,bottom: 70),
              child: Container(
                width: MediaQuery.of(context).size.width * .95,
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://images.deliveryhero.io/image/fd-kh/LH/jdex-hero.jpg?width=512&height=384&quality=45',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Positioned(
              top: 320,
              left: 15,
              right: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Shop name'),
                ],
              ),
            ),
            const Positioned(
              top: 340,
              left: 15,
              right: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Category'),
                ],
              ),
            ),
            const Positioned(
              top: 360,
              left: 15,
              right: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Discount\%'),
                ],
              ),
            ),
            Positioned(
              top: 240,
              left: 300,
              child: FloatingActionButton(
                backgroundColor: white,
                onPressed: () {},
                // Customize shape to make it bigger
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0), // Increase the radius for a bigger size
                ),
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Icon(Icons.favorite_border, color: secondary,size: 35,)
                  ],
                ),
              ),
            ),

          ],
        ),
      ],

    );
  }
}