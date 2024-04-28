import 'package:flutter/material.dart';
import 'package:tamago/data/response/api_response.dart';
import 'package:tamago/repositoriese/product_repository.dart';

class ProductViewModel extends ChangeNotifier {
  final _productRepo = ProductRepository();

  ApiResponse<dynamic?> response = ApiResponse.loading();

  setProductList(response) {
    this.response = response;
    notifyListeners();
  }
  Future<dynamic?> getAllProducts() async => await _productRepo.getProducts()
        .then((products) {
          print('response in viewmodel ${products.data!.length}');
          setProductList(ApiResponse.completed(products));
        })
        .onError((error, stackTrace) => setProductList(ApiResponse.error(stackTrace.toString())));
}