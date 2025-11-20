import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/product_list_screen.dart';
import 'screens/product_detail_screen.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyShopApp());
}

class MyShopApp extends StatelessWidget {
  const MyShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyShop Mini',
      // Pakai Palet B
      theme: AppTheme.lightTheme,

      initialRoute: '/',
      routes: {'/': (context) => const HomeScreen()},
      onGenerateRoute: (settings) {
        if (settings.name == ProductListScreen.routeName) {
          final args = settings.arguments as ProductListArgs;
          return MaterialPageRoute(
            builder: (context) {
              return ProductListScreen(selectedCategory: args.category);
            },
          );
        } else if (settings.name == ProductDetailScreen.routeName) {
          final args = settings.arguments as ProductDetailArgs;
          return MaterialPageRoute(
            builder: (context) {
              return ProductDetailScreen(product: args.product);
            },
          );
        }
        return null;
      },
    );
  }
}
