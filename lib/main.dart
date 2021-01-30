import 'package:chefs_delight/auth.dart';
import 'package:chefs_delight/cart.dart';
import 'package:chefs_delight/ricept.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductDataProvider>(
          create: (context) => ProductDataProvider(),
        ),
        ChangeNotifierProvider<CartDataProvider>(
          create: (context) => CartDataProvider(),
        ),
      ],
      child: MaterialApp(
      title: 'Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        backgroundColor: Colors.white70,
      ),
      home: HomePage(),
    ),
    );
  }
}