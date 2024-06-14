import 'package:flutter/material.dart';
import 'package:homewrksta/feature/products/view/products_page.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ProductsPage());
  }
}