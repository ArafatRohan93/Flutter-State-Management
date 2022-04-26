import 'package:get/get.dart';
import 'package:getx_tutorial/models/products.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    fetchProducts();
  }

  void fetchProducts() async {
    await Future.delayed(Duration(seconds: 1));
    var productResult = [
      Product(
        id: 1,
        productName: "FirstProduct",
        ProductImage: "abd",
        productDescription: "Some descripion about product",
        price: 40.0,
      ),
      Product(
        id: 2,
        productName: "SecondProduct",
        ProductImage: "abd",
        productDescription: "Some descripion about product",
        price: 50.0,
      ),
      Product(
        id: 3,
        productName: "ThirdProduct",
        ProductImage: "abd",
        productDescription: "Some descripion about product",
        price: 20.0,
      ),
      Product(
        id: 4,
        productName: "FourthProduct",
        ProductImage: "abd",
        productDescription: "Some descripion about product",
        price: 80.0,
      ),
    ];

    products.value = productResult;
  }
}
