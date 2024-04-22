import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'nav_bar_state.dart';

class NavBarCubit extends Cubit<NavBarState> {
  NavBarCubit() : super(NavBarInitial());

  late int changeIndexNum;

  void changeIndex(int newIndex) {
    changeIndexNum=newIndex;
    emit(NavBarNewIndex());
  }
}
