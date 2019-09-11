import 'package:flutter/material.dart';
import '../widgets/products_grid.dart';
class ProductOverviewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('MyShop'),
        
      ),
      body: ProductsGrid(),
    );
  }
}

