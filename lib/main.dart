import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OrientationWidget(),
    );
  }
}

class OrientationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.portrait
              ? PortraitImageFeed()
              : LandscapeImageFeed();
        },
      ),
    );
  }
}

class PortraitImageFeed extends StatelessWidget {
  final List<String> images = [
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    // Add more image URLs here...
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            height: 150,
            width: 150,
            child: Image.network(images[index]),
          ),
        );
      },
    );
  }
}

class LandscapeImageFeed extends StatelessWidget {
  final List<String> images = [
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    "https://thehappygivers.com/cdn/shop/products/close-up-t-shirt-mockup-of-a-woman-wearing-a-denim-jacket-a20863_1000x1000.jpg?v=1661277953",
    // Add more image URLs here...
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 150,
      ),
      itemCount: images.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            height: 150,
            width: 150,
            child: Image.network(images[index]),
          ),
        );
      },
    );
  }
}
