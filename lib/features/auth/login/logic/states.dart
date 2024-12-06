import 'package:freezed_annotation/freezed_annotation.dart';

part 'states.freezed.dart';

@freezed
class LoginStates<T> with _$LoginStates<T> {

  const factory LoginStates.initial()=_LoginInitialState;

  const factory LoginStates.loading()=LoginLoadingState;

  const factory LoginStates.success(T data)=LoginSuccessState<T>;

  const factory LoginStates.error({required String error})=LoginErrorState;


}