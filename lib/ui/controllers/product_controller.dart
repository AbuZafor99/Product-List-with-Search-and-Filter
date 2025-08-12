import 'package:get/get.dart';
import '../../data/models/product.dart';
import '../../data/service/api_service.dart';


class ProductController extends GetxController {
  final ApiService _apiService = ApiService();
  final RxList<Product> products = <Product>[].obs;
  final RxList<Product> filteredProducts = <Product>[].obs;
  final RxString searchQuery = ''.obs;
  final RxString selectedCategory = 'All'.obs;
  final RxBool isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProducts();
    debounce(searchQuery, (_) => filterProducts(), time: const Duration(milliseconds: 300));
    ever(selectedCategory, (_) => filterProducts());
  }

  Future<void> fetchProducts() async {
    try {
      isLoading.value = true;
      final fetchedProducts = await _apiService.fetchProducts();
      products.value = fetchedProducts;
      filterProducts();
    } catch (e) {
      Get.snackbar('Error', 'Failed to fetch products: $e');
    } finally {
      isLoading.value = false;
    }
  }

  void filterProducts() {
    List<Product> filteredList = products.where((product) {
      final matchesSearch = product.title.toLowerCase().contains(searchQuery.value.toLowerCase());
      final matchesCategory = selectedCategory.value == 'All' || product.category == selectedCategory.value;
      return matchesSearch && matchesCategory;
    }).toList();
    filteredProducts.value = filteredList;
  }

  List<String> get uniqueCategories {
    final categories = products.map((product) => product.category).toSet().toList();
    categories.sort();
    return ['All', ...categories];
  }

  Future<void> refreshProducts() async {
    await fetchProducts();
  }
}
