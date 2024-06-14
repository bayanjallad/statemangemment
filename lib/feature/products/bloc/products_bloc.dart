import 'package:bloc/bloc.dart';
import 'package:homewrksta/core/model/handilling.dart';
import 'package:homewrksta/core/model/products_model.dart';
import 'package:homewrksta/core/service/products_service.dart';
import 'package:meta/meta.dart';

part 'products_event.dart';
part 'products_state.dart';

class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc() : super(LodingState()) {
    on<GetProductsEvent>((event, emit) async {
     // emit(LodingState());
      ResultModel result = await ProductServiceImp().getProducts();
      if (result is Listof<ProductModel>) {
        emit(SuccessGetProductsState(products: result.data));
      } else {
        emit(ErroreState());
      }
    });
  }
}
