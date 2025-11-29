import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/Models/resMenuModel/menu_item_model.dart';
import 'package:food_go/Models/resModel/body_model.dart';
import 'package:food_go/UI/Item_Details_Screen/item_details_screen.dart';
import 'package:food_go/UI/cart/cart_screen.dart';
import 'package:food_go/UI/checkout/check_out_screen.dart';
import 'package:food_go/UI/home/home_screen.dart';
import 'package:food_go/UI/restaurant_screen/res_screen.dart';
import 'package:food_go/UI/splash/splash_screen.dart';
import 'package:food_go/blocs/cart/cart_bloc.dart';
import 'package:food_go/blocs/editing_mode/cart_iditing_cubit.dart';
import 'package:food_go/blocs/restaurant/res_bloc.dart';
import 'package:food_go/utils/routes.dart';



void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => CartEditingCubit()),
        BlocProvider(create: (_) => ResBloc()),
        BlocProvider(create: (_) => CartBloc()),
      ],
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

        AppRoutes.cart: (_) => const CartScreen(),
        AppRoutes.splash: (_) => const SplashScreen(),
        AppRoutes.restaurant: (_) => const ResScreen(),
        AppRoutes.checkout: (final context){
          final args = ModalRoute.of(context)!.settings.arguments;

          if (args is Map<String, dynamic>) {
            final double? totalPrice = args['total'] as double?;


            if (totalPrice != null ) {
              return CheckoutScreen(totalPrice: totalPrice);
            }
          }
          return const Scaffold(
            body: Center(
              child: Text(
                'Error: no checkout screen data.',
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
        AppRoutes.detailsScreen: (final context) {
          final args = ModalRoute.of(context)!.settings.arguments;

          if (args is Map<String, dynamic>) {
            final MenuItemModel? item = args['item'] as MenuItemModel?;
            final BodyModel? resItem = args['resItem'] as BodyModel?;

            if (item != null && resItem != null) {
              return ItemDetailsScreen(item: item, resItem: resItem);
            }
          }


          return const Scaffold(
            body: Center(
              child: Text(
                'Error: Menu or Restaurant data missing for Item Details Screen.',
                textAlign: TextAlign.center,
              ),
            ),
          );
        },
      },
      home: const SplashScreen(),
    );
  }
}
