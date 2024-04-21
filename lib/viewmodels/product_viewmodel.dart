import 'package:flutter/material.dart';
import 'package:tamago/data/response/api_response.dart';
import 'package:tamago/models/ProductModel.dart';
import 'package:tamago/repositoriese/product_repository.dart';

class ProductViewModel extends ChangeNotifier {
  final _productRepo = ProductRepository();

  ApiResponse<ProductModel> response = ApiResponse.loading();

  setProductList(response) {
    this.response = response;
    notifyListeners();
  }
  Future<ProductModel?> getAllProducts() async{
    await _productRepo.getProducts()
        .then((products) => setProductList(ApiResponse.completed(products)))
        .onError((error, stackTrace) => setProductList(ApiResponse.error(stackTrace.toString())));
  }
}