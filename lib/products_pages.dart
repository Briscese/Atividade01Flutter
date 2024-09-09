import 'package:flutter/material.dart';
import 'product_details_page.dart'; // Importa a página de detalhes do produto

class ProductsPage extends StatelessWidget {
  final List<String> products = [
    'Produto 1',
    'Produto 2',
    'Produto 3',
    'Produto 4',
    'Produto 5',
  ];

  ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Produtos'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            title: Text(product),
            onTap: () {
              // Navegar para a página de detalhes do produto
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsPage(productName: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
