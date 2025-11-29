import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/UI/cart/cart_screen.dart';
import 'package:food_go/UI/home/home_screen.dart';
import 'package:food_go/UI/restaurant_screen/res_screen.dart';
import 'package:food_go/UI/splash/splash_screen.dart';
import 'package:food_go/blocs/restaurant/res_bloc.dart';
import 'package:food_go/utils/routes.dart';

import 'UI/checkout/checkout_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(
    MultiBlocProvider(
      providers: [BlocProvider(create: (_) => ResBloc())],
      child: const MyApp(),
    ),

  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(final BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FoodGo',

      routes: {
        AppRoutes.home: (_) => const HomeScreen(),
        AppRoutes.checkout: (_) => const CheckoutScreen(),
        AppRoutes.cart: (_) => const CartScreen(),
        AppRoutes.splash: (_) => const SplashScreen(),
        AppRoutes.restaurant: (_) => const ResScreen(),
      },
      home: const SplashScreen(),
    );
  }
}
