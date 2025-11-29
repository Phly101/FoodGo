part of 'res_bloc.dart';


sealed class ResState {}

final class ResInitial extends ResState {}

final class ResDetailLoading extends ResState {}

final class ResDetailLoaded extends ResState {
  final BodyModel bodyData;
  final List<MenuItemModel> restaurantMenu;
  ResDetailLoaded({required this.restaurantMenu, required this.bodyData});
}

class RestaurantDetailError extends ResState {
  final String message;

  RestaurantDetailError({required this.message});
}