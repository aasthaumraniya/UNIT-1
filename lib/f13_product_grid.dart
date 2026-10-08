import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class Product {
  final String name;
  final double price;
  final IconData icon;

  const Product({required this.name, required this.price, required this.icon});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final List<Product> products = const [
    Product(name: 'Wireless Headphones', price: 99.99, icon: Icons.headphones),
    Product(name: 'Smart Watch', price: 199.99, icon: Icons.watch),
    Product(name: 'Gaming Mouse', price: 49.99, icon: Icons.mouse),
    Product(name: 'Mechanical Keyboard', price: 129.99, icon: Icons.keyboard),
    Product(name: 'Bluetooth Speaker', price: 79.99, icon: Icons.speaker),
    Product(name: 'HD Webcam', price: 59.99, icon: Icons.camera_alt),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Product Listing Grid')),
        body: GridView.builder(
          padding: const EdgeInsets.all(12),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.85,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
          ),
          itemCount: products.length,
          itemBuilder: (context, index) {
            final p = products[index];
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 36,
                    backgroundColor: Colors.indigo.shade50,
                    child: Icon(p.icon, size: 40, color: Colors.indigo),
                  ),
                  const SizedBox(height: 12),
                  Text(p.name, textAlign: TextAlign.center, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 6),
                  Text('\$${p.price.toStringAsFixed(2)}', style: const TextStyle(fontSize: 15, color: Colors.green, fontWeight: FontWeight.w600)),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
