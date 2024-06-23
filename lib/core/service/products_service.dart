import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';

import 'package:homewrksta/core/model/handilling.dart';
import 'package:homewrksta/core/model/products_model.dart';
import 'package:homewrksta/core/service/core_service.dart';

import '../../main.dart';

ConnectivityResult? connectivityResult;
Connectivity conectivity = Connectivity();

abstract class ProductService extends Coreservice {
  String basUrl = "https://freetestapi.com/api/v1/products";
  Future<ResultModel> getProducts();
}

class ProductServiceImp extends ProductService {
  @override
  Future<ResultModel> getProducts() async {
    connectivityResult = await conectivity.checkConnectivity();

    try {
      if (
         //connectivityResult == ConnectivityResult.mobile ||
           connectivityResult != ConnectivityResult.wifi ||
          connectivityResult != ConnectivityResult.none) {
            print(connectivityResult.toString());
        response = await dio.get(basUrl);
        if (response.statusCode == 200) {
          List<ProductModel> products = List.generate(
            response.data.length,
            (index) => ProductModel.fromJson(
              response.data[index],
            ),
          );
          productsBox!.put("products", products);
          print("from service");
          return Listof(data: products);
        } else {
          return ErrorModel(message: "There is No Internet");
        }
      } else {
        print("from cash");
        return productsBox!.get("products");
      }
    } on DioException catch (e) {
      return ExceptionModel(message: e.error.toString());
    }
  }
}
