import 'package:flutter/material.dart';
import 'package:shopapp/screens/products_overview_screen.dart';
import './providers/products.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final ThemeData theme = ThemeData(
    primarySwatch: Colors.purple,
    fontFamily: 'Lato',
  );

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'MyShop',
        theme: theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(secondary: Colors.deepOrange),
        ),
        home: const ProductsOverviewScreen(),
      ),
    );
  }
}
