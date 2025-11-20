import 'package:flutter/material.dart';
import '../models/product.dart';
import '../theme/app_colors.dart';

class ProductDetailArgs {
  final Product product;
  ProductDetailArgs(this.product);
}

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/productDetail';
  final Product product;

  const ProductDetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Produk'),
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
              AppColors.surfaceB.withOpacity(0.2),
              AppColors.backgroundB,
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.white, AppColors.surfaceB.withOpacity(0.15)],
                ),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.primaryB.withOpacity(0.06),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: AppColors.primaryB.withOpacity(0.06),
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(
                          color: AppColors.secondaryB.withOpacity(0.15),
                          width: 1.5,
                        ),
                      ),
                      child: Icon(
                        product.icon,
                        size: 80,
                        color: AppColors.primaryB,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Text(
                      product.name,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 12,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            AppColors.accentB.withOpacity(0.08),
                            AppColors.accentB.withOpacity(0.03),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: AppColors.accentB.withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      child: Text(
                        product.price,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.w600,
                          color: AppColors.accentB,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
