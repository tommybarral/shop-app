import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import './Models/product_provider.dart';
import './Models/cart.dart';
import './Screens/product_detail_screen.dart';
import '../Screens/product_overview_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
        create: (ctx) => ProductProvider()
        ),
        ChangeNotifierProvider(
            create: (ctx) => Cart()
        ),
      ],
      child: MaterialApp(
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
          ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
        },
      ),
    );
  }
}

