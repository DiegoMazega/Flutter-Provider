import 'package:flutter/cupertino.dart';
import '../providers/product_provider.dart';
import '../providers/product.dart';
import '../widgets/product_item.dart';
import 'package:provider/provider.dart';

class ProductGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final loadedProducts = productsData.items;
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      itemCount: loadedProducts.length,
      itemBuilder: (context, index)=>ChangeNotifierProvider(
        create: (context)=> loadedProducts[index] , 
        child: ProductItem(
        // id: loadedProducts[index].id,
        // title: loadedProducts[index].title,
        // imageUrl: loadedProducts[index].imageUrl,
      ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
      childAspectRatio: 3/2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10
    ),
    );
  }
}