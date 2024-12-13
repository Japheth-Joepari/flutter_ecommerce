import 'package:boilerplate/models/Shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  List<Shoe> shoeShop = [
    Shoe(
        name: "Bullian Kille",
        description: "Classic White Sneakers: Timeless and versatile, perfect for any outfit",
        imagePath: "lib/images/shoe1.png",
        price: "250"),
    Shoe(
        name: "Zummmion dago",
        description: "Black Leather Boots: Durable and stylish for all-weather adventures",
        imagePath: "lib/images/shoe2.png",
        price: "250"),
    Shoe(
        name: "larry Porche",
        description: "Running Shoes: Lightweight and cushioned for optimal performance",
        imagePath: "lib/images/shoe3.png",
        price: "250"),
    Shoe(
        name: "ciaga ballen",
        description: "Elegant Heels: Sleek design for a touch of sophistication",
        imagePath: "lib/images/shoe4.png",
        price: "250")
  ];

// list of items in the user cart
  List<Shoe> userCart = [];

// get list of shoue for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

//add items to cart
  void addItemsToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

//add items to cart
  void removeItemsFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }


List <Shoe> getUserCart() {
      return userCart;
  }
}