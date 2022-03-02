import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Shop app'),
          centerTitle: true
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              height: 125,
              width: double.infinity,
              color: Colors.orange,
              child: Center(child: Text('Shop app', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('First section'),
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Main page'),
      ),
    );
  }
}
