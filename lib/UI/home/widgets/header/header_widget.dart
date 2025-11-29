import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_go/blocs/cart/cart_bloc.dart';
import 'package:food_go/common/common_text.dart';
import 'package:food_go/utils/app_colors.dart';
import 'package:badges/badges.dart' as badges;
import 'package:food_go/utils/routes.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(final BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ListTile(
          leading: Container(
            decoration: BoxDecoration(
              color: AppColors.grey10,
              borderRadius: BorderRadius.circular(30),
            ),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: FaIcon(
                FontAwesomeIcons.bars,
                color: AppColors.cartIcon,
                size: 20,
              ),
            ),
          ),
          title: const CommonText(
            text: 'Deliver To',
            color: AppColors.specialText,
            fontWeight: FontWeight.bold,
          ),
          subtitle: const CommonText(
            text: 'Mohand Lab office',
            color: AppColors.grey,
          ),
          trailing: BlocSelector<CartBloc, CartState, int>(
            selector: (final state) {
              if (state is CartHasData) {
                return state.totalItemsCount;
              }
              return 0;
            },
            builder: (final context, final totalItems) {
              return badges.Badge(
                showBadge: totalItems > 0,
                badgeContent: CommonText(
                  text: totalItems.toString(),
                  color: AppColors.white,
                ),
                position: badges.BadgePosition.topEnd(top: -6, end: -3),
                badgeStyle: const badges.BadgeStyle(
                  badgeColor: AppColors.specialText,
                ),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.cart);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.cartIcon,
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: FaIcon(
                        FontAwesomeIcons.bagShopping,
                        size: 25,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              CommonText(
                text: 'Hey Mohand',
                color: AppColors.grey50,
                fontSize: 16,
              ),
              const CommonText(
                text: ', Good Afternoon!',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.grey10,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(12),
              leading: const FaIcon(
                FontAwesomeIcons.magnifyingGlass,
                color: AppColors.grey,
              ),
              title: CommonText(
                text: 'Search dishes, restaurants',
                color: AppColors.grey70,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
