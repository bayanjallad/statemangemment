import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homewrksta/core/model/handilling.dart';
import 'package:homewrksta/core/model/products_model.dart';
import 'package:homewrksta/feature/products/bloc/products_bloc.dart';
import 'package:hive/hive.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({super.key});
  late Box myBox;



  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsBloc()..add(GetProductsEvent()),
      child: Builder(builder: (context) {
        return Scaffold(
          body: BlocBuilder<ProductsBloc, ProductsState>(
            builder: (context, state) {
              if (state is SuccessGetProductsState) {
                return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1),
                  itemCount: state.products.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 5,
                      color: Color.fromARGB(255, 251, 226, 247),
                      child: Center(
                        child: ListTile(
                          leading: Text(state.products[index].id.toString()),
                          title: Text(state.products[index].name),
                          subtitle: Text(state.products[index].description),
                          trailing: Text(state.products[index].price.toString()),
                        ),
                      ),
                    );
                  },
                );
              } else if (state is ErroreState) {
                return const Center(child: Text("There is no internet yet"));
              } else {
                return const CircularProgressIndicator();
              }
            },
          ),
        );
      }),
    );
  }
}
