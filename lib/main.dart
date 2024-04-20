import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:tamago/color.dart';
import 'package:tamago/widget/app_bar.dart';
import 'package:tamago/widget/discount_poster.dart';
import 'package:tamago/widget/product_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: primary,
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'TamaGo')

    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: Myappbar(key: _key,),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .75,
              height:380,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                  itemBuilder: (context,index){
                  return DiscountPoster();
                  }),
            ),
          ),

          /*
          *
          * CATEGORY
          *
          */

          SliverToBoxAdapter(
            child: Padding(
            padding: const EdgeInsets.only(left: 15),
              child: Row(
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
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, top: 15, right: 15,bottom: 2),
                child: Row(
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
                      SizedBox(width: 10,),
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
                      SizedBox(width: 10,),
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
                      SizedBox(width: 10,),
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
                      SizedBox(width: 10,),
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
                      SizedBox(width: 10,),
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
                ),
              ),
            ),
          const SliverToBoxAdapter(
            child: Row(
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
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(left:15 ,top: 30),
              child: Text("Items",
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Titan',
                  color: secondary,
                ),),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 400,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: (6 / 2).ceil(),
                itemBuilder: (context, index) {
                  final startIndex = index * 2;
                  final endIndex = (startIndex + 2).clamp(0, 6);
                  return Row(
                    children: List.generate(
                      endIndex - startIndex,
                          (rowIndex) {
                        final itemIndex = startIndex + rowIndex;
                        return Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: ProductCard(),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),

        ],
      ),
    );

  }
}






