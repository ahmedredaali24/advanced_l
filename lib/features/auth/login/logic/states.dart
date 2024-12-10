import 'package:advanced_app/core/networking/apis/api_error_model.dart';
import 'package:advanced_app/features/auth/login/data/models/login_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'states.freezed.dart';

@freezed
class LoginStates<T> with _$LoginStates<T> {

  const factory LoginStates.initial()=_LoginInitialState;

  const factory LoginStates.loading()=LoginLoadingState;

  const factory LoginStates.success(T data)=LoginSuccessState<T>;

  const factory LoginStates.error(ApiErrorModel apiErrorModel)=LoginErrorState;


}