import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/cart.dart' show Cart;
import '../Widgets/cart_item.dart';

class CartScreen extends StatelessWidget {

  static const routeName = '/cart-screen';

  @override
  Widget build(BuildContext context) {

    final cart = Provider.of<Cart>(context);

    return Scaffold(
      appBar: AppBar(title: Text('Cart screen'),),
      body: Column(
        children: [
          Card(
            margin: EdgeInsets.all(15),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total', style: TextStyle(fontSize: 20,),),
                  SizedBox(width: 10,),
                  Spacer(),
                  Chip(label: Text('${cart.totalAmount} €', style: TextStyle(color: Colors.white),), backgroundColor: Theme.of(context).primaryColor,),
                  TextButton(onPressed: () {}, child: Text('ORDER NOW', style: TextStyle(fontSize: 14, color: Colors.purple))),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Expanded(
              child: ListView.builder(
                  itemCount: cart.items.length,
                  itemBuilder: (context, index) => CartItem(
                      cart.items.values.toList()[index].id,
                      cart.items.keys.toList()[index],
                      cart.items.values.toList()[index].title,
                      cart.items.values.toList()[index].quantity,
                      cart.items.values.toList()[index].price
                  ),
              ),
          ),
        ],
      ),
    );
  }
}
