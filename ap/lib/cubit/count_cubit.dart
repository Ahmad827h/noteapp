import 'package:bloc/bloc.dart';
import 'package:get/get.dart';
import 'package:meta/meta.dart';

part 'count_state.dart';

class CountCubit extends Cubit<CountState> {
  int count = 0;
  CountCubit() : super(CountInitial());
  increamtFunCtion() {
    count++;
    emit(increatmtState(count: count));
  }
}
