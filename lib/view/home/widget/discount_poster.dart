import 'package:flutter/material.dart';
import 'package:tamago/color.dart';

class DiscountPoster extends StatelessWidget {
  const DiscountPoster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: MediaQuery.of(context).size.width * .95,
            height: 350,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(50),
              image: const DecorationImage(
                image: AssetImage("assets/images/poster2.jpg",),
                fit: BoxFit.fitHeight,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Align(
                  alignment: Alignment.bottomLeft,
                ),
                SizedBox(height: 130,),
                Padding(
                  padding: const EdgeInsets.all(30),
                  child: Text('30% OFF select apparel and accessories!',
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),),
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text('Add to cart',
                          style: TextStyle(
                            color: black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}