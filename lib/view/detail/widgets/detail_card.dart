import 'package:flutter/material.dart';
import 'package:tamago/color.dart';

class DetailCard extends StatelessWidget {
  const DetailCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 15,right: 15,left: 15,bottom: 280),
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
                  Text('Tube Coffee',
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Mochi'
                    ),),
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
                  Text('Category: Drink',style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Titan'
                  ),),
                ],
              ),
            ),
            const Positioned(
              top: 400,
              left: 15,
              right: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('20\%',style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Titan'
                  ),),
                ],
              ),
            ),
            const Positioned(
              top: 440,
              left: 15,
              right: 15,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Details: \n\nTube Coffee is a locally grown coffee chain here in Cambodia serving delicious Fast, Affordable, and Quality coffee and beverages.',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Titan'
                    ),),
                ],
              ),
            ),

          ],
        ),
      ],
    );
  }
}