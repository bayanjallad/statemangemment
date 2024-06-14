import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:homewrksta/config/bloc_observec.dart';
import 'package:homewrksta/feature/products/view/products_page.dart';

void main(){
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProductsPage());
  }
}