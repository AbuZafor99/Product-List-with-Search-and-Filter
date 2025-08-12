import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../ui/utils/app_constants.dart';
import '../models/product.dart';


class ApiService {
  Future<List<Product>> fetchProducts() async {
    final response = await http.get(Uri.parse(AppConstants.productsApiUrl));

    if (response.statusCode == 200) {
      List<dynamic> productJson = json.decode(response.body);
      return productJson.map((json) => Product.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}