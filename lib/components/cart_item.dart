import 'package:boilerplate/models/Cart.dart';
import 'package:boilerplate/models/Shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartItem extends StatefulWidget {
  Shoe  shoe;
   CartItem({required this.shoe, super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart () {
    Provider.of<Cart>(context, listen: false).removeItemsFromCart(widget.shoe);
  }
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
  margin: EdgeInsets.only(bottom: 15),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagePath, width: 95,),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(onPressed: removeItemFromCart, icon: Icon(Icons.delete)),
      ),
    );
  }
}