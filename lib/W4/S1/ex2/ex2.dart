

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text(
            "Products",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.pink[200],
        ),
        body: const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: ProductCard(product: Product.dart,),
              ),
              SizedBox(
                width: double.infinity,
                child: ProductCard(product: Product.flutter,),
              ),
              SizedBox(
                width: double.infinity,
                child: ProductCard(product: Product.firebase,),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class ProductCard extends StatelessWidget {

  final Product product;
  const ProductCard({
    required this.product,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.asset(
              product.image,
              width: 100,
              height: 100,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              product.title,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding:const EdgeInsets.only(left: 10, bottom: 10),
            child: Text(
              product.description,
              style:const TextStyle(
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}

enum Product {
  dart(
    title: "Dart",
    description: "the best object language",
    image: "assets/w4-s1-ex2/dart.png"
  ),
  flutter(
    title: "Flutter",
    description: "the best widget mobile library",
    image:"assets/w4-s1-ex2/flutter.png"
  ),
  firebase(
    title: "Firebase",
    description: "the best cloud database",
    image:"assets/w4-s1-ex2/firebase.png"
  );

  final String title;
  final String description;
  final String image;

  const Product({
    required this.title,
    required this.description,
    required this.image
  });

}
