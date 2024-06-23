// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'products_bloc.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

class LodingState extends ProductsState {}

class ErroreState extends ProductsState{}

class SuccessGetProductsState extends ProductsState {
List<dynamic> products; 
  SuccessGetProductsState({
    required this.products,
  });
}
