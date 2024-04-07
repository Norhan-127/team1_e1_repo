import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import '../data/models/capsule.dart';
import '../data/repo/capsules_repo.dart';

part 'capsule_state.dart';

class CapsuleCubit extends Cubit<CapsuleState> {
  final CapsuleRepo cap_repo;
  CapsuleCubit(this.cap_repo) : super(CapsuleInitial());

  void GetAllCapsules(){
    cap_repo.getAllCapsules().then((caps) => {
      emit(GetCapsules(allCapsules: caps))
    });

  }
}
