import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response.g.dart';

@JsonSerializable()
class RegisterResponse {
  String? message;
  @JsonKey(name: "data")
  UserData? userData;
  bool? status;
  int? code;

  RegisterResponse({this.message, this.userData, this.status, this.code});

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);
}

@JsonSerializable()
class UserData {
  String? token;
  String? username;

  UserData({this.token, this.username});

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
