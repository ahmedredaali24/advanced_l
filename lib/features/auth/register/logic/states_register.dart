import 'package:advanced_app/core/networking/apis/api_error_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'states_register.freezed.dart';

@freezed
class RegisterStates<T> with _$RegisterStates<T> {
  const factory RegisterStates.initial() = _RegisterInitialState;

  const factory RegisterStates.loading() = RegisterLoadingState;

  const factory RegisterStates.success(T data) = RegisterSuccessState<T>;

  const factory RegisterStates.error(ApiErrorModel apiModelError) =
      RegisterErrorState;
}
