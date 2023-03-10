import 'package:pax/api/auth_interface.dart';
import 'package:pax/models/auth_api_models.dart';

class AuthAPIMockup implements AuthAPIInterface {
  AuthAPIMockup(_);

  @override
  Future<void> init() async {}

  @override
  Future<AuthResponse?> sendCode(SendCodeRequest data) async {
    // return AuthResponse(status: 'error', data: 'WRONG PHONE NUMBER FORMAT!!!');
    return AuthResponse(status: 'ok');
  }

  @override
  Future<AuthResponse?> validateCode(ValidateCodeRequest data) async {
    // return AuthResponse(status: 'error', data: 'PIN error!!!');
    return AuthResponse(status: 'ok');
  }

  @override
  Future<void> logout() async {
    return;
  }
}
