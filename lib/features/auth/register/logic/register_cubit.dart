import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/user_model.dart';
part 'register_state.dart';


class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  void userRegister({
    required String name,
    required String email,
    required String password,
  })
  {
    emit(RegisterLoading());
    FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password)
        .then((value){
          userCreate(
            uId: value.user!.uid,
            email: email,
            name: name
          );
          emit(RegisterSuccess());
    })
        .catchError((error){
          emit(RegisterError());
    });
  }

  void userCreate({
    required String name,
    required String email,
    required String uId,
  }){
    UserModel model = UserModel(
      email: email,
      name: name,
      uId: uId,
    );
    FirebaseFirestore.instance.collection('users').doc(uId).set(model.toMap())
        .then((value) {
          emit(CreateUserSuccess());
    })
        .catchError((error){
          emit(CreateUserError());
    });
  }
}
