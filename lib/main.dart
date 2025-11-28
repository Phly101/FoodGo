import 'package:flutter/material.dart';
import 'package:food_go/UI/cart/cart_screen.dart';
import 'package:food_go/UI/home/home_screen.dart';
import 'package:food_go/UI/splash/splash_screen.dart';
import 'package:food_go/utils/routes.dart';

import 'UI/checkout/checkout_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      routes: {

        AppRoutes.home: (_) => const HomeScreen(),
        AppRoutes.checkout: (_) => const CheckoutScreen(),
        AppRoutes.cart: (_) => const CartScreen(),
        AppRoutes.splash: (_) => const SplashScreen(),

      } ,
      home: const SplashScreen(),
    );
  }
}

