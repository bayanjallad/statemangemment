import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:homewrksta/config/bloc_observec.dart';
import 'package:homewrksta/feature/products/view/products_page.dart';

import 'package:hive/hive.dart';

import 'core/model/products_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ProductModelAdapter());
  Box productsBox = await Hive.openBox<ProductModel>("productsBox");
  // await initialiseHive();
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
