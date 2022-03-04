import 'package:flutter/material.dart';
import 'package:shop_app/Screens/product_detail_screen.dart';
import 'package:shop_app/Screens/product_overview_screen.dart';

class MainDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 80,
            width: double.infinity,
            color: Colors.purple,
            child: Center(
              child: Text(
                'Shop app',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Main page'),
            onTap: () {
              Navigator.of(context).pushNamed(ProductOverviewScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Product details screen'),
            onTap: () {
              Navigator.of(context).pushNamed(ProductDetailScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
