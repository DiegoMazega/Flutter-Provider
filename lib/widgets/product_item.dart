import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerr/providers/product.dart';
import '../screens/products_details_screen.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;
  // ProductItem({this.id, this.title, this.imageUrl});

  static const routeName = '/product-item';
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () => Navigator.of(context)
              .pushNamed(ProductDetailScreen.routename, arguments: product.id),
          child: Image.network(product.imageUrl, fit: BoxFit.cover),
        ),
        footer: GridTileBar(
          title: Text(
            "$product.title",
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black45,
          leading: IconButton(
              icon: Icon(product.isFavorite ? Icons.favorite : Icons.favorite_border  ),
              color: Theme.of(context).accentColor,
              onPressed: () {
                product.favoriteState();
              }),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Theme.of(context).accentColor,
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
