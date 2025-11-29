part of 'cart_bloc.dart';

sealed class CartState extends Equatable {
  const CartState();
  @override
  List<Object?> get props => [];

}

final class CartInitial extends CartState {}

final class CartEmpty extends CartState {}

final class CartLoading extends CartState {}

final class CartHasData extends CartState {
  final List<CartItemModel> items;
  final double totalAmount;
  final int totalItemsCount;

  const CartHasData(this.items, this.totalAmount, this.totalItemsCount);

  @override
  List<Object> get props => [items, totalAmount, totalItemsCount];
}
