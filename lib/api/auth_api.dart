import 'package:dio/dio.dart';
import 'package:pax/api/auth_interface.dart';
import 'package:pax/models/auth_api_models.dart';

class AuthAPI implements AuthAPIInterface {
  final Dio dio = Dio();
  Uri Function(String) baseUriFunc;

  AuthAPI(this.baseUriFunc);

  @override
  Future<void> init() async {}

  @override
  Future<AuthResponse?> sendCode(SendCodeRequest data) async {
    var res = await dio.postUri<Map<String, dynamic>>(
      baseUriFunc('/send_code'),
      options: Options(headers: {'Content-Type': 'application/json'}),
      data: data.toJson(),
    );

    return AuthResponse.fromJson(res.data!);
  }

  @override
  Future<AuthResponse?> validateCode(ValidateCodeRequest data) async {
    var res = await dio.postUri<Map<String, dynamic>>(
      baseUriFunc('/validate_code'),
      options: Options(headers: {'Content-Type': 'application/json'}),
      data: data.toJson(),
    );

    return AuthResponse.fromJson(res.data!);
  }

  @override
  Future<void> logout() async {
    await dio.postUri(
      baseUriFunc('/logout'),
      options: Options(headers: {'Content-Type': 'application/json'}),
    );
  }
}
