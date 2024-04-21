import 'package:flutter/material.dart';
import 'package:tamago/color.dart';

class CategoryImg extends StatelessWidget {
  const CategoryImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width * .75,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: white,
            ),
            child: IconButton(
              icon: Image.asset('assets/images/shirt.png',
                width: 150,
                height: 150,
                fit: BoxFit.fitHeight,
              ),
              onPressed: (){
              },
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width * .75,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: white,
            ),
            child: IconButton(
              icon: Image.asset('assets/images/jean.png',
                width: 150,
                height: 150,
                fit: BoxFit.fitHeight,
              ),
              onPressed: (){
              },
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width * .75,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: white,
            ),
            child: IconButton(
              icon: Image.asset('assets/images/bag.png',
                width: 150,
                height: 150,
                fit: BoxFit.fitHeight,
              ),
              onPressed: (){
              },
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width * .75,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: white,
            ),
            child: IconButton(
              icon: Image.asset('assets/images/shoes.png',
                width: 150,
                height: 150,
                fit: BoxFit.fitHeight,
              ),
              onPressed: (){
              },
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width * .75,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: white,
            ),
            child: IconButton(
              icon: Image.asset('assets/images/jacket.png',
                width: 150,
                height: 150,
                fit: BoxFit.fitHeight,
              ),
              onPressed: (){
              },
            ),
          ),
        ),
        const SizedBox(width: 10,),
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width * .75,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: white,
            ),
            child: IconButton(
              icon: Image.asset('assets/images/short.png',
                width: 150,
                height: 150,
                fit: BoxFit.fitHeight,
              ),
              onPressed: (){
              },
            ),
          ),
        ),

      ],
    );
  }
}