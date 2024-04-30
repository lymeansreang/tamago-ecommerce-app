import 'package:flutter/material.dart';
import 'package:tamago/color.dart';
import 'package:tamago/view/detail/detail_screen.dart';

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
                      borderRadius: BorderRadius.circular(15),
                      color: white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network('https://cms.istad.co${product!.attributes!.picture!.data!.attributes!.url!}',
                          fit: BoxFit.cover,
                        ),
                    ),

                  ),
                ),
                  Positioned(
                    top: 260,
                      left: 60,
                      child: FloatingActionButton.extended(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> MyDetail()));
                        },
                        backgroundColor: white,
                        hoverColor: secondary,
                        label: Row(
                          children: [
                            Text('Details'),
                            SizedBox(width: 3,),
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
                    left: 60,
                    child:  Text('${product!.attributes!.name!}',
                    style: TextStyle(
                      fontFamily: 'Titan'
                    ),),
                  ),
                  Positioned(
                      top: 340,
                      bottom: 0,
                      left: 85,
                      child: Text('${product!.attributes!.discount!}\$  ',
                      style: TextStyle(
                      ),),
                  )
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