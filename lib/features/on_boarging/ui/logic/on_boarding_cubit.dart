import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

part 'on_boarding_state.dart';

class OnBoardingCurrentPageCubit extends Cubit<OnBoardingCurrentPageState> {
  OnBoardingCurrentPageCubit() : super(OnBoardingCurrentPageInitial());
  final PageController pageController = PageController();
  int currentPage = 0 ;
  getCurrentPageViewIndex(c){
    currentPage=c;
    emit(ChangePageCounterState());
  }
}