import 'package:json_annotation/json_annotation.dart';

part 'auth_api_models.g.dart';

@JsonSerializable()
class SendCodeRequest {
  String phone;

  SendCodeRequest({required this.phone});

  factory SendCodeRequest.fromJson(Map<String, dynamic> json) => _$SendCodeRequestFromJson(json);
  Map<String, dynamic> toJson() => _$SendCodeRequestToJson(this);
}

@JsonSerializable()
class ValidateCodeRequest {
  String phone;
  String code;

  ValidateCodeRequest({required this.phone, required this.code});

  factory ValidateCodeRequest.fromJson(Map<String, dynamic> json) => _$ValidateCodeRequestFromJson(json);
  Map<String, dynamic> toJson() => _$ValidateCodeRequestToJson(this);
}

@JsonSerializable()
class AuthResponse {
  String status;
  dynamic data;

  AuthResponse({required this.status, this.data});

  factory AuthResponse.fromJson(Map<String, dynamic> json) => _$AuthResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AuthResponseToJson(this);
}
