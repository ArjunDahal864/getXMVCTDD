import 'package:foody/model/product_model.dart';
import 'package:http/http.dart' as http;

class TestProductService {
  final url = 'http://makeup-api.herokuapp.com/api/v1/products.json?brand';
  Future<List<Product>> getProducts() async {
    var response = await http.get(url);
     if (response.statusCode == 200) {
      var jsonString = response.body;
      return productFromJson(jsonString);
    } else {
      return null;
    }
  }
}
