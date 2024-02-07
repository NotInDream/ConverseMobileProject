import 'package:converse_project/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      nama: 'Chuck Taylor All Star',
      harga: 'Rp. 759.000',
      desc: 'Low Top High',
      imagePath: 'lib/images/LowWhite.jpg',
    ),
    Shoe(
      nama: 'Chuck Taylor Midnight High',
      harga: 'Rp. 1.950.000',
      desc: 'Comfort shoes',
      imagePath: 'lib/images/MidnightHigh.jpg',
    ),
    Shoe(
      nama: 'Chuck Taylor Split Amber',
      harga: 'Rp. 1.250.000',
      desc: 'Comfort shoes',
      imagePath: 'lib/images/SplitAmber.jpg',
    ),
    Shoe(
      nama: 'Chuck Taylor Split Grey',
      harga: 'Rp. 1.150.000',
      desc: 'Comfort shoes',
      imagePath: 'lib/images/SplitGrey.jpg',
    ),
    Shoe(
      nama: 'Chuck Taylor All Star High',
      harga: 'Rp. 799.000',
      desc: 'Comfort shoes',
      imagePath: 'lib/images/RedHigh.jpg',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
