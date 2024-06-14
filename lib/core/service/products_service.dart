import 'package:dio/dio.dart';
import 'package:homewrksta/core/model/handilling.dart';
import 'package:homewrksta/core/model/products_model.dart';
import 'package:homewrksta/core/service/core_service.dart';

abstract class ProductService extends Coreservice {
  String basUrl = "https://freetestapi.com/api/v1/products";
  Future<ResultModel> getProducts();
}

class ProductServiceImp extends ProductService {
  @override
  Future<ResultModel> getProducts() async {
    try {
      response = await dio.get(basUrl);
      if (response.statusCode == 200) {
        List<ProductModel> products = List.generate(response.data.length,
            (index) => ProductModel.fromJson(response.data[index]));
        return Listof(data: products);
      } else {
        return ErrorModel(message: "There is No Internet");
      }
    } on DioException catch (e) {
      return ExceptionModel(message: e.error.toString());
    }
  }
}
