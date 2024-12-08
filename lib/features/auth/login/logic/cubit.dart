import 'package:advanced_app/core/helper/shared_pref_helper.dart';
import 'package:advanced_app/core/networking/apis/dio_factory.dart';
import 'package:advanced_app/core/utils/constants/shared_pref_keys.dart';
import 'package:advanced_app/features/auth/login/data/models/login_request_body.dart';
import 'package:advanced_app/features/auth/login/logic/states.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../data/repositories_impl/login_repository.dart';

class LoginViewModel extends Cubit<LoginStates> {
  final LoginRepository _loginRepository;

  LoginViewModel(this._loginRepository) : super(const LoginStates.initial());
  final formKey = GlobalKey<FormState>();

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  void emitLoginState() async {
    emit(const LoginStates.loading());

    final response = await _loginRepository.login(
      LoginRequestBody(
        email: email.text,
        password: password.text,
      ),

    );

    response.when(
      success: (loginResponse) async {
        emit(LoginStates.success(data:loginResponse ));
      },
      failure: (error) {
        emit(LoginStates.error(error: error = "error"));
      },
    );
  }

  saveUserToken(String token) async {
    await SharedPrefHelper.setData(SharedPrefKeys.userToken, token);
    // DioFactory.setTokenAfterLogin(token);
  }
}
