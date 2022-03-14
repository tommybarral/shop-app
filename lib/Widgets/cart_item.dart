import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Models/cart.dart';

class CartItem extends StatelessWidget {

  final String id;
  final String productId;
  final String title;
  final int quantity;
  final double price;

  CartItem(
      this.id,
      this.productId,
      this.title,
      this.quantity,
      this.price,
  );

  @override
  Widget build(BuildContext context) {


    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      confirmDismiss: (direction) {
        return showDialog(context: context, builder: (ctx) => AlertDialog(
          title: Text('Are you sure ?'),
          content: Text('Do you want to remove item from cart ?'),
          actions: [
            TextButton(onPressed: () {
              Navigator.of(context).pop(false);
            }, child: Text('No')),
          TextButton(onPressed: () {
            Navigator.of(context).pop(true);
          }, child: Text('Yes'),),
          ],
        ));
      },
      onDismissed: (direction) {
        Provider.of<Cart>(context, listen: false).removeItem(productId);
      },
      background: Container(
        color: Theme.of(context).errorColor,
        alignment: Alignment.centerRight,
        padding: EdgeInsets.only(right: 20),
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
        child: Icon(Icons.delete, color: Colors.white, size: 40,),
      ),
      child: Card(
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
      ),
    );
  }
}
