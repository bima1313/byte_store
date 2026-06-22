import 'package:flutter/material.dart';

const List<ProductCategory> categories = [
  ProductCategory(name: 'PC', icon: Icons.desktop_windows_rounded),
  ProductCategory(name: 'Laptop', icon: Icons.laptop),
  ProductCategory(name: 'Smartphone', icon: Icons.smartphone),
  ProductCategory(name: 'Audio', icon: Icons.headphones),
  ProductCategory(name: 'Smartwatch', icon: Icons.watch),
  ProductCategory(name: 'Printer', icon: Icons.print),
  ProductCategory(name: 'Virtual Reality', icon: Icons.view_in_ar_outlined),
];

class ProductCategory {
  final String name;
  final IconData icon;

  const ProductCategory({required this.name, required this.icon});
}
