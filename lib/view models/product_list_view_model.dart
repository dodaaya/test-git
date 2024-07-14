import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:git/models/product.dart';
import '../services/api_service.dart';

class ProductListViewModel extends ChangeNotifier {
  final ApiService _apiService = GetIt.I<ApiService>();
  List<Product> products = [];
  bool isLoading = true;

  ProductListViewModel() {
    fetchProducts();
  }

  Future<void> fetchProducts() async {
    try {
      products = await _apiService.fetchProducts();
    } catch (e) {
      print(e);
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
