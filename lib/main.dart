import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:homewrksta/config/bloc_observec.dart';
import 'package:homewrksta/feature/products/view/products_page.dart';

import 'package:hive/hive.dart';

import 'core/model/product_model_apapter.dart';
import 'core/model/products_model.dart';

late Box productsBox;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(productTypeAdapter());
  productsBox = await Hive.openBox<ProductModel>("productsBox");

  Bloc.observer = MyBlocObserver();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: ProductsPage());
  }
}
