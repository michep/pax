import 'package:pax/models/auth_api_models.dart';

abstract class AuthAPIInterface {
  Future<void> init() async {}

  Future<AuthResponse?> sendCode(SendCodeRequest data);

  Future<AuthResponse?> validateCode(ValidateCodeRequest data);

  Future<void> logout();
}
