
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/core/data_source/firebase_data_source.dart';
import 'package:nti5/features/auth/cubit/states.dart';

class AuthCubit extends Cubit<AuthState> {
  FirebaseDataSource firebaseDataSource = FirebaseDataSource();
  AuthCubit() : super(LoginIntitalStates());

  Future<void> signUp(String email, String password, String name) async {
    emit(SignUpLoadingStates());

    try {
      await firebaseDataSource.signUp(email, password, name);
      emit(SignUpSuccessStates('success'));
    } catch (e) {
      emit(SignUpErrorStates(e.toString()));
    }
  }
}
