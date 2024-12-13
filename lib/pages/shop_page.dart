import 'package:boilerplate/components/shoe_tile.dart';
import 'package:boilerplate/models/Cart.dart';
import 'package:boilerplate/models/Shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemsToCart(shoe);
    showDialog(context: context, builder: (context) => AlertDialog(
      title: Text('Successfully Added'),
      content: Text('check your cart'),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return  Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(color: Colors.grey[100], borderRadius: BorderRadius.circular(8)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('search', style: TextStyle(color: Colors.grey),),
              Icon(Icons.search, color: Colors.grey,),
            ], 
          ),  
        ),

         Padding(
          padding: EdgeInsets.symmetric(vertical: 25),
          child: Text('Everyone fles, some fly higher than others'),
        ),

        Padding(padding: EdgeInsets.symmetric(horizontal: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Hot Pics 🔥', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
            Text('See all', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),)
          ],
        ),
        ),

        SizedBox(height: 10,),
        Expanded(child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
          Shoe shoe = value.getShoeList()[index];
          return ShoeTile(
            onTap:() => addShoeToCart(shoe),
            shoe: shoe,
          );
        },)),
        Padding(
          padding: EdgeInsets.only(top: 25.0),
          child: Divider(
            color: Colors.grey[300],
          ),
        )
      ],
      
    ));
  }
}