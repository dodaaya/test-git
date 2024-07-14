import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'services/api_service.dart';
import 'views/product_list_view.dart';

void setupLocator() {
  GetIt.I.registerLazySingleton(() => ApiService());
}

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListView(),
    );
  }
}

