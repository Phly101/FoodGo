import 'package:flutter_bloc/flutter_bloc.dart';

class CartEditingCubit extends Cubit<bool> {
  CartEditingCubit() : super(false);

  void toggle() => emit(!state);
  void set(final bool value) => emit(value);
}
