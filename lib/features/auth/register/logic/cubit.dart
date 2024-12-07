import 'package:advanced_app/features/auth/register/data/models/sign_up_request_body.dart';
import 'package:advanced_app/features/auth/register/logic/states_register.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../data/repositories_impl/register_repository.dart';

class RegisterViewModel extends Cubit<RegisterStates> {
  final RegisterRepository _registerRepository;

  RegisterViewModel(this._registerRepository)
      : super(const RegisterStates.initial());

  final formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController passwordConfirmation = TextEditingController();

  void emitRegisterState() async {
    emit(const RegisterStates.loading());

    final response = await _registerRepository.signup(SignUpRequestBody(
      name.text,
      email.text,
      phone.text,
      "0",
      password.text,
      passwordConfirmation.text,
    ));
    response.when(
      success: (registerResponse) {
        emit(RegisterStates.success(registerResponse));
      },
      failure: (error) {
        emit(RegisterStates.error(error: error = "error"));
      },
    );
  }
}
