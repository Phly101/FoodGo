import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_go/Data/resData/body_data.dart';
import 'package:food_go/Data/resMenuData/menu_data.dart';
import 'package:food_go/Models/resMenuModel/menu_item_model.dart';
import 'package:food_go/Models/resModel/body_model.dart';

part 'res_event.dart';

part 'res_state.dart';

class ResBloc extends Bloc<ResEvent, ResState> {
  ResBloc() : super(ResInitial()) {
    on<LoadResDetails>(_onLoadResDetails);
  }

  void _onLoadResDetails(
    final LoadResDetails event,
    final Emitter<ResState> emit,
  ) async {
    emit(ResDetailLoading());
    try {
      await Future.delayed(const Duration(milliseconds: 500));

      final BodyModel? data = BodyData.getRestaurantById(event.resId);
      final List<MenuItemModel> fullMenu = MenuData.getItemsByRestaurant(
        data?.resName ?? '',
      );

      if (data != null) {
        emit(ResDetailLoaded(bodyData: data, restaurantMenu: fullMenu));
      } else {
        emit(
          RestaurantDetailError(
            message: 'Restaurant with ID ${event.resId} not found.',
          ),
        );
      }
    } catch (e) {
      emit(
        RestaurantDetailError(message: 'Failed to load restaurant details: $e'),
      );
    }
  }
}
