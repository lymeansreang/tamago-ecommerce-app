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
              icon: Image.network('https://i.pinimg.com/564x/4d/63/46/4d63460950d2d42c1c078173d351b76e.jpg',
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
              icon: Image.network('https://i.pinimg.com/736x/19/6e/86/196e86843d9e8caaafc92b08af1ea7b9.jpg',
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
              icon: Image.network('https://i.pinimg.com/564x/24/1b/6d/241b6d7c5ce33f5b4e9028fa8e42a588.jpg',
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
              icon: Image.network('https://i.pinimg.com/564x/91/d5/91/91d59128e123ae82e6fa49d6d8cae557.jpg',
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
              icon: Image.network('https://i.pinimg.com/564x/b5/06/eb/b506eba9d13520f8ca8e2c998ceaa305.jpg',
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
        // Expanded(
        //   child: Container(
        //     width: MediaQuery.of(context).size.width * .75,
        //     height: 80,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(20),
        //       color: white,
        //     ),
        //     child: IconButton(
        //       icon: Image.asset('assets/images/short.png',
        //         width: 150,
        //         height: 150,
        //         fit: BoxFit.fitHeight,
        //       ),
        //       onPressed: (){
        //       },
        //     ),
        //   ),
        // ),

      ],
    );
  }
}