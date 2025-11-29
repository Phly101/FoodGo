part of 'res_bloc.dart';


abstract class ResEvent {}
final class LoadResDetails extends ResEvent{
  final int resId;

  LoadResDetails({required this.resId});

}
