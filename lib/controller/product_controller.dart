import 'package:foody/model/product_model.dart';
import 'package:foody/services/api/product_service.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var fetching = true.obs;
  var products = <Product>[].obs;

  @override
  void onInit() {
    getProducts();
    super.onInit();
  }

  void getProducts() async {
    try {
      var listProducts = await ProductService().getProducts();
      if (listProducts.isNotEmpty) {
        products.addAll(listProducts);
        fetching(false);
      } else {
        fetching(false);
      }
    } catch (e) {
      print(e);
      fetching(false);
    }
  }
}
