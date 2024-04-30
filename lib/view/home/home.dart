import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tamago/models/ProductModel.dart';
import 'package:tamago/view/home/widget/app_bar.dart';
import 'package:tamago/view/home/widget/category_img.dart';
import 'package:tamago/view/home/widget/category_name.dart';
import 'package:tamago/view/home/widget/category_title.dart';
import 'package:tamago/view/home/widget/discount_poster.dart';
import 'package:tamago/view/home/widget/product_card.dart';
import 'package:tamago/viewmodels/product_viewmodel.dart';

import '../../color.dart';
import '../../data/response/status.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  final _productViewModel = ProductViewModel();

  @override
  void initState() {
    super.initState();
    _productViewModel.getAllProducts();
  }
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
                    return const DiscountPoster();
                  }),
            ),
          ),

          /*
          *
          * CATEGORY
          *
          */

          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15),
              child: CatagoryTitle(),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(left: 15, top: 15, right: 15,bottom: 2),
              child: CategoryImg(),
            ),
          ),
          const SliverToBoxAdapter(
            child: CategoryName(),
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
              child: ChangeNotifierProvider(
                create: (context) => _productViewModel,
                child: Consumer<ProductViewModel>(
                  builder: (context,viewModel, _){
                    switch(viewModel.response.status){
                      case Status.LOADING:
                        return const CircularProgressIndicator();
                      case Status.COMPLETED:
                        ProductModel productModel = viewModel.response.data;
                        return ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: productModel.data!.length,
                            itemBuilder: (context, index) {
                              // print('index = $index, ${productModel.data![index]}');
                              return ProductCard(product: productModel.data![index],);
                            }
                        );
                      case Status.ERROR:
                        return Text('Error');
                      default:
                        return Text('Default');
                    }
                  }
                ),
              ),
            ),
          ),

        ],
      ),
    );

  }
}





