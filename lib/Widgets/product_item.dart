import 'package:flutter/material.dart';
import 'package:shop_app/Screens/product_detail_screen.dart';

class ProductItem extends StatelessWidget {

  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        leading: IconButton(
          icon: Icon(Icons.favorite),
          color: Theme.of(context).colorScheme.primary,
          onPressed: () {},
        ),
        title: Text(title, textAlign: TextAlign.center),
        trailing: IconButton(
          icon: Icon(Icons.add_shopping_cart),
          color: Theme.of(context).colorScheme.primary,
          onPressed: () {},
        ),
      ),
        child: GestureDetector(
          onTap: () {},
          child: Image.network(imageUrl, fit: BoxFit.cover),
        ),
    );
  }
}
