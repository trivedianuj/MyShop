import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './product_item_widget.dart';
import '../providers/products_provider.dart';
class ProductsGrid extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<ProductsProvider>(context);
    final products = productsData.itemsGetter;
    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: products.length,
      itemBuilder: (ctx, i) => ProductItem(
       id: products[i].id,
       title: products[i].title,
       imageUrl: products[i].imageUrl,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3/2 ,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
