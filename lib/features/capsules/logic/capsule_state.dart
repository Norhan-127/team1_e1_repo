
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:team1_e1/features/capsules/data/models/capsule.dart';
part 'capsule_state.freezed.dart';



@freezed
class CapsuleState with _$CapsuleState {
  const factory CapsuleState.initial() = _CapsuleInitial;
  const factory CapsuleState.getCapsules(List<Capsule> allCapsules) = _GetCapsules;

}


