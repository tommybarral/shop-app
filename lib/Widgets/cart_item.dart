import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {

  final String id;
  final String title;
  final int quantity;
  final double price;

  CartItem(
      this.id,
      this.title,
      this.quantity,
      this.price,
  );

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15,vertical: 4),
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListTile(
          leading: Container(
              height: 55,
              width: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                    color: Colors.purple,
              ),
              child: FittedBox(child: Text('$price €', style: TextStyle(fontSize: 14, color: Colors.white),))),
          title: Text(title),
          subtitle: Text('Total: ${quantity * price} €'),
          trailing: Text('$quantity x'),
        ),
      ),
    );
  }
}
