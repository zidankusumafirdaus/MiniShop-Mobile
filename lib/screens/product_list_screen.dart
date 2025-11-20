import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import '../models/product.dart';
import 'product_detail_screen.dart';
import '../theme/app_colors.dart';

class ProductListArgs {
  final String category;
  ProductListArgs(this.category);
}

class ProductListScreen extends StatelessWidget {
  static const routeName = '/productList';
  final String selectedCategory;

  const ProductListScreen({super.key, required this.selectedCategory});

  List<Product> _getProducts() {
    return SampleData.productsPerCategory[selectedCategory] ?? [];
  }

  void _openDetail(BuildContext context, Product product) {
    Navigator.pushNamed(
      context,
      ProductDetailScreen.routeName,
      arguments: ProductDetailArgs(product),
    );
  }

  @override
  Widget build(BuildContext context) {
    final products = _getProducts();

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedCategory),
        backgroundColor: AppColors.primaryB,
        elevation: 0,
        foregroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.surfaceB.withOpacity(0.3),
              AppColors.backgroundB,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: AppColors.secondaryB.withOpacity(0.08),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  selectedCategory,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 0.88,
                  children: products.map((product) {
                    return InkWell(
                      onTap: () => _openDetail(context, product),
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white,
                              AppColors.surfaceB.withOpacity(0.2),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primaryB.withOpacity(0.03),
                              blurRadius: 4,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColors.primaryB.withOpacity(0.05),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Icon(
                                  product.icon,
                                  size: 36,
                                  color: AppColors.primaryB,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                product.name,
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              const SizedBox(height: 6),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: AppColors.accentB.withOpacity(0.08),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  product.price,
                                  style: Theme.of(context).textTheme.labelMedium
                                      ?.copyWith(
                                        fontWeight: FontWeight.w600,
                                        color: AppColors.accentB,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
