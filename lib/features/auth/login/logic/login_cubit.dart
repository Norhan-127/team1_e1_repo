import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  static LoginCubit get(context) => BlocProvider.of(context);

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(LoginLoading());
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password)
        .then((value) {
          print(value.user!.email);
          emit(LoginSuccess());
    })
        .catchError((error){
          emit(LoginError());
    });
  }
}
