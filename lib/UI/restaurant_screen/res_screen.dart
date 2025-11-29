import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/UI/restaurant_screen/Widgets/body/res_details_body_widget.dart';
import 'package:food_go/UI/restaurant_screen/Widgets/categories/res_categories_widget.dart';
import 'package:food_go/UI/restaurant_screen/Widgets/header/header_widget.dart';
import 'package:food_go/UI/restaurant_screen/Widgets/res_details/res_details_widget.dart';
import 'package:food_go/blocs/restaurant/res_bloc.dart';
import 'package:food_go/common/common_text.dart';
import 'package:food_go/utils/app_colors.dart';

class ResScreen extends StatefulWidget {
  const ResScreen({super.key});

  @override
  State<ResScreen> createState() => _ResScreenState();
}

class _ResScreenState extends State<ResScreen> {
  String _selectedcategory = '';

  void _updateCategory(final String categoryName) {
    setState(() {
      _selectedcategory = categoryName;
    });
  }

  @override
  Widget build(final BuildContext context) {

    return BlocListener<ResBloc, ResState>(
      listener: (final context, final state) {
        if (state is RestaurantDetailError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error loading restaurant: ${state.message}'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: Scaffold(
        body: BlocBuilder<ResBloc, ResState>(
          builder: (final context, final state) {
            if (state is ResDetailLoading || state is ResInitial) {
              return const Center(
                child: CircularProgressIndicator(color: AppColors.addButton),
              );
            } else if (state is RestaurantDetailError) {
              return Center(child: CommonText(text: state.message));
            } else if (state is ResDetailLoaded) {
              final data = state.bodyData;
              final menuItems = state.restaurantMenu;
              if (_selectedcategory.isEmpty && data.mealItems.isNotEmpty) {
                _selectedcategory = data.mealItems.first;
              }

              return ListView(
                children: [
                  const ResDetailsHeaderWidget(),
                  const SizedBox(height: 20),
                  ResDetailsWidget(
                    rating: data.rating.toInt(),
                    delivery: data.delivery,
                    time: '20 min',
                    resName: data.resName,
                    resDetails: data.resDetails ?? '',
                  ),
                  const SizedBox(height: 20),
                  ResCategoriesWidget(
                    mealItems: data.mealItems,
                    selectedCategory: _selectedcategory,
                    onCategorySelected: _updateCategory,
                  ),
                  const SizedBox(height: 20),
                  ResDetailsBodyWidget(
                    allRestaurantItems: menuItems,
                    selectedCategory: _selectedcategory,
                  ),
                ],
              );
            }

            // --- D. Default Fallback ---
            return const Center(child: CommonText(text: 'Ready to load...'));
          },
        ),
      ),
    );
  }
}
