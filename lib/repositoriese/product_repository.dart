import 'package:tamago/data/network/api_service.dart';
import 'package:tamago/models/ProductModel.dart';
import 'package:tamago/res/app_url.dart';

class ProductRepository{

  final _apiService = ApiService();

  Future<ProductModel> getProducts() async{
    try{
      dynamic responses = await
                _apiService.getApiResponse(AppUrl.getAllProducts);
      return productModelFromJson(responses);
    }catch (e){
      rethrow;
    }
  }

}