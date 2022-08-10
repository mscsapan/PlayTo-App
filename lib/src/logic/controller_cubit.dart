import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'controller_state.dart';

class ControllerCubit extends Cubit<int> {
  ControllerCubit() : super(0);

  int currentIndex = 0;
  void changeState(int index) {
    emit(currentIndex = index);
  }

  int catTitleIndex = 0;
  void catTitleState(int index) {
    emit(catTitleIndex = index);
  }
}
