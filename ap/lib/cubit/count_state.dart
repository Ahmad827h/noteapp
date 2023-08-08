part of 'count_cubit.dart';

@immutable
sealed class CountState {}

final class CountInitial extends CountState {}

final class increatmtState extends CountState {
  int count = 0;
  increatmtState({required this.count});
}
