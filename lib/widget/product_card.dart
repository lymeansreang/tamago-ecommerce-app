import 'package:flutter/material.dart';
import 'package:tamago/color.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
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
                    child: IconButton(
                      icon: Image.asset('assets/images/jacket.png',
                        height: 300,
                        width: MediaQuery.of(context).size.width * .45,
                        fit: BoxFit.fitHeight,
                      ),
                      onPressed: () {  },
                    ),
                  ),
                ),
                  Positioned(
                    top: 260,
                      left: 50,
                      child: FloatingActionButton.extended(
                        onPressed: (){},
                        backgroundColor: white,
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

                  const Positioned(
                    top: 320,
                    bottom: 0,
                    left: 50,
                    child: Text("Product name"),
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