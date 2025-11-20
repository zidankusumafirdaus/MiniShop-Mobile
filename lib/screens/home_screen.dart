import 'package:flutter/material.dart';
import '../data/sample_data.dart';
import 'product_list_screen.dart';
import '../theme/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _openCategory(BuildContext context, String category) {
    Navigator.pushNamed(
      context,
      ProductListScreen.routeName,
      arguments: ProductListArgs(category),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyShop Mini'),
        centerTitle: true,
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
              AppColors.primaryB.withOpacity(0.02),
              AppColors.backgroundB,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pilih Kategori',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 16),

              // Grid kategori agar lebih fleksibel
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 14,
                  children: SampleData.categories.map((cat) {
                    final name = cat['name'] as String;
                    final iconData = cat['icon'] as IconData;

                    return InkWell(
                      onTap: () => _openCategory(context, name),
                      borderRadius: BorderRadius.circular(12),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                              Colors.white,
                              AppColors.surfaceB.withOpacity(0.3),
                            ],
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.primaryB.withOpacity(0.04),
                              blurRadius: 6,
                              offset: const Offset(0, 1),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: AppColors.primaryB.withOpacity(0.06),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Icon(
                                  iconData,
                                  size: 32,
                                  color: AppColors.primaryB,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                name,
                                style: Theme.of(context).textTheme.titleSmall,
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
