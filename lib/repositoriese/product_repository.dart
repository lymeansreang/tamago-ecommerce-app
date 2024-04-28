import 'dart:convert';

import 'package:tamago/data/network/api_service.dart';
import 'package:tamago/models/ProductModel.dart';
import 'package:tamago/res/app_url.dart';

class ProductRepository{

  final _apiService = ApiService();

  Future<ProductModel> getProducts() async{
    try{
      dynamic responses = await
                _apiService.getApiResponse(AppUrl.getAllProducts);
      print('response ${responses["data"][0]["name"]}');
      // print('response : $responses');
      // print('jsonDecode ${jsonDecode(responses)}');
      print('Response in model ${ProductModel.fromJson(responses)}');
      return ProductModel.fromJson(responses);
    }catch (e){
      print('Error $e');
      rethrow;
    }
  }

}