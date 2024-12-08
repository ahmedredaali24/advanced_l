import 'package:freezed_annotation/freezed_annotation.dart';

part 'specialization_response.g.dart';
@JsonSerializable()
class SpecializationResponse {
  String? message;
  List<Data>? data;
  bool? status;
  int? code;

  SpecializationResponse({this.message, this.data, this.status, this.code});
  factory SpecializationResponse.fromJson(Map<String, dynamic> json) => _$SpecializationResponseFromJson(json);

  // /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  // Map<String, dynamic> toJson() => _$PersonToJson(this);
}
@JsonSerializable()
class Data {
  int? id;
  String? name;
  List<Doctors>? doctors;

  Data({this.id, this.name, this.doctors});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

}
@JsonSerializable()
class Doctors {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  // Specialization? specialization;
  // City? city;
  int? appointPrice;
  String? startTime;
  String? endTime;

  Doctors(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.photo,
      this.gender,
      this.address,
      this.description,
      this.degree,
      // this.specialization,
      // this.city,
      this.appointPrice,
      this.startTime,
      this.endTime});
  factory Doctors.fromJson(Map<String, dynamic> json) => _$DoctorsFromJson(json);
}
// @JsonSerializable()
// class Specialization {
//   int? id;
//   String? name;
//
//   Specialization({this.id, this.name});
//   factory Specialization.fromJson(Map<String, dynamic> json) => _$SpecializationFromJson(json);
// }
// @JsonSerializable()
// class City {
//   int? id;
//   String? name;
//   @JsonKey(name:"governrate" )
//   Specialization? governRate;
//
//   City({this.id, this.name, this.governRate});
//   factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
//
// }
