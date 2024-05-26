// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/product_provider.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: FutureBuilder(
        future: Provider.of<ProductProvider>(context, listen: false)
            .fetchProducts(),
        builder: (ctx, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return Consumer<ProductProvider>(
              builder: (ctx, productProvider, child) => ListView.builder(
                itemCount: productProvider.products.length,
                itemBuilder: (ctx, index) =>
                    ProductCard(product: productProvider.products[index]),
              ),
            );
          }
        },
      ),
    );
  }
}
