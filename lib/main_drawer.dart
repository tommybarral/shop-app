import 'package:flutter/material.dart';

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
            leading: Icon(Icons.settings),
            title: Text('First section'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
