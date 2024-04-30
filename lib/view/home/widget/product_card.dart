import 'package:flutter/material.dart';
import 'package:tamago/color.dart';

import '../../../models/ProductModel.dart';

class ProductCard extends StatelessWidget {

  Datum? product;

  ProductCard({
    this.product
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15,bottom: 90,top: 20),
                child: Container(
                    width: MediaQuery.of(context).size.width * .45,
                    height: 280,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: Image.network('${product?.attributes!.picture!.data!.attributes!.url!}',
                          fit: BoxFit.cover,
                        ),
                    ),

                  ),
                ),
                  Positioned(
                    top: 260,
                      left: 50,
                      child: FloatingActionButton.extended(
                        onPressed: (){},
                        backgroundColor: white,
                        hoverColor: secondary,
                        label: Row(
                          children: [
                            Text('ADD'),
                            SizedBox(width: 3,),
                            Icon(Icons.add_circle,
                              color: secondary,)
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50), // Adjust the radius as needed
                        ),
                      ),
                  ),

                  Positioned(
                    top: 320,
                    bottom: 0,
                    left: 50,
                    child:  Text('${product!.attributes!.name!}'),
                  ),
                  const Positioned(
                      top: 350,
                      bottom: 0,
                      left: 85,
                      child: Text('Price'))
                  // Container(
                  //   width: MediaQuery.of(context).size.width * .45,
                  //   height: 280,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(80),
                  //       color: black
                  //   ),
                  // ),
        ]
        ),
      ],
    );
  }
}