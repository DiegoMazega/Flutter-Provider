import 'package:flutter/material.dart';
import '../widgets/produtc_grid..dart';
import '../providers/product.dart';

class ProductsOverviewScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'), centerTitle: true,
      ),
      body: ProductGrid()
    );
  }
}

