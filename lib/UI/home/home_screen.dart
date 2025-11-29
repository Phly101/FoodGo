import 'package:flutter/material.dart';
import 'package:food_go/UI/home/widgets/body/body_widget.dart';
import 'package:food_go/UI/home/widgets/categories/categories_widget.dart';
import 'package:food_go/UI/home/widgets/header/header_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
       body: ListView(
         children: [
           const HeaderWidget(),
           const CategoriesWidget(),
           const BodyWidget(),
         ],
       )
    );
  }
}
