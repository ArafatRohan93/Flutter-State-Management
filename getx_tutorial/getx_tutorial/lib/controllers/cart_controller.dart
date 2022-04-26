import 'package:get/get.dart';
import 'package:getx_tutorial/models/products.dart';

class CartController extends GetxController{
    var cartItems = <Product>[].obs;
    double get totalPrice => cartItems.fold(0, (sum,item) => sum + item.price);
    int get totalItem => cartItems.length;

    addToCart(Product product){
      cartItems.add(product);
    }
}