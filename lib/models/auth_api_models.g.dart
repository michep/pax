// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_api_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendCodeRequest _$SendCodeRequestFromJson(Map<String, dynamic> json) => SendCodeRequest(
      phone: json['phone'] as String,
    );

Map<String, dynamic> _$SendCodeRequestToJson(SendCodeRequest instance) => <String, dynamic>{
      'phone': instance.phone,
    };

ValidateCodeRequest _$ValidateCodeRequestFromJson(Map<String, dynamic> json) => ValidateCodeRequest(
      phone: json['phone'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$ValidateCodeRequestToJson(ValidateCodeRequest instance) => <String, dynamic>{
      'phone': instance.phone,
      'code': instance.code,
    };

AuthResponse _$AuthResponseFromJson(Map<String, dynamic> json) => AuthResponse(
      status: json['status'] as String,
      data: json['data'],
    );

Map<String, dynamic> _$AuthResponseToJson(AuthResponse instance) => <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };
