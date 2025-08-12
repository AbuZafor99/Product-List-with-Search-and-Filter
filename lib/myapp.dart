import 'package:get/get.dart';
import 'package:product_list_with_search_and_filter/ui/controller_binder.dart';
import 'package:product_list_with_search_and_filter/ui/screens/product_list_screen.dart';

abstract class AppRoutes {
  static const products = '/products';
}

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.products,
      page: () => const ProductListScreen(),
      binding: ProductBinding(),
    ),
  ];
}