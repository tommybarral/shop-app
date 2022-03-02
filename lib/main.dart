import 'package:flutter/material.dart';
import 'package:shop_app/Screens/product_overview_screen.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        colorScheme: Theme.of(context).colorScheme.copyWith(primary: Colors.deepOrange),
        errorColor: Colors.red,
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
          subtitle1: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          subtitle2: TextStyle(fontSize: 15),
        ),
      ),
      home: ProductOverviewScreen(),
      routes: {
        ProductOverviewScreen.routeName: (context) => ProductOverviewScreen(),

      },
    );
  }
}

