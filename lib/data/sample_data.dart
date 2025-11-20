import 'package:flutter/material.dart';
import '../models/product.dart';

class SampleData {
  // Kategori toko sembako
  static const categories = [
    {'name': 'Beras & Biji', 'icon': Icons.rice_bowl},
    {'name': 'Minyak & Bumbu', 'icon': Icons.oil_barrel},
    {'name': 'Susu & Minuman', 'icon': Icons.local_drink},
    {'name': 'Makanan Ringan', 'icon': Icons.cookie},
    {'name': 'Peralatan Rumah', 'icon': Icons.home},
  ];

  // Produk tiap kategori
  static Map<String, List<Product>> productsPerCategory = {
    'Beras & Biji': [
      Product(icon: Icons.rice_bowl, name: 'Beras 5kg', price: 'Rp69.000'),
      Product(icon: Icons.spa, name: 'Kacang Hijau 1kg', price: 'Rp15.000'),
      Product(icon: Icons.emoji_nature, name: 'Kedelai 1kg', price: 'Rp17.000'),
      Product(icon: Icons.eco, name: 'Jagung 1kg', price: 'Rp12.000'),
    ],
    'Minyak & Bumbu': [
      Product(
        icon: Icons.oil_barrel,
        name: 'Minyak Goreng 1L',
        price: 'Rp14.000',
      ),
      Product(icon: Icons.cookie, name: 'Gula 1kg', price: 'Rp14.000'),
      Product(icon: Icons.set_meal, name: 'Garam 500g', price: 'Rp3.500'),
      Product(
        icon: Icons.soup_kitchen,
        name: 'Bumbu Dapur',
        price: 'Rp1.000 – 5.000',
      ),
    ],
    'Susu & Minuman': [
      Product(icon: Icons.local_drink, name: 'Susu Bubuk', price: 'Rp25.000'),
      Product(icon: Icons.water, name: 'Air Mineral', price: 'Rp5.000'),
      Product(
        icon: Icons.emoji_food_beverage,
        name: 'Teh Celup',
        price: 'Rp7.500',
      ),
      Product(icon: Icons.local_cafe, name: 'Kopi Sachet', price: 'Rp1.500'),
    ],
    'Makanan Ringan': [
      Product(icon: Icons.cookie, name: 'Keripik Kentang', price: 'Rp10.000'),
      Product(icon: Icons.lunch_dining, name: 'Kerupuk', price: 'Rp3.000'),
      Product(icon: Icons.bakery_dining, name: 'Roti', price: 'Rp8.000'),
      Product(icon: Icons.set_meal, name: 'Mie Instan', price: 'Rp3.500'),
    ],
    'Peralatan Rumah': [
      Product(icon: Icons.home, name: 'Sapu', price: 'Rp15.000'),
      Product(icon: Icons.delete, name: 'Tempat Sampah', price: 'Rp20.000'),
      Product(icon: Icons.wash, name: 'Sabun Cuci', price: 'Rp7.500'),
      Product(
        icon: Icons.cleaning_services,
        name: 'Pembersih Lantai',
        price: 'Rp12.000',
      ),
    ],
  };
}
