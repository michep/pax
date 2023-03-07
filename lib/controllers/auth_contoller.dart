import 'dart:async';

import 'package:get/get.dart';
import 'package:pax/api/auth_api.dart';
import 'package:pax/api/auth_interface.dart';
import 'package:pax/models/auth_api_models.dart';

const int PIN_RESEND_TIMEOUT = 10;

enum LoginState {
  phone,
  pin,
  authorized,
  error,
}

class AuthController {
  final _api = Get.find<AuthAPIInterface>();
  late final Rx<LoginState> _currentState;
  final Rx<String?> _errorMessage = Rx(null);
  final Rx<int> _countdown = Rx(0);
  Timer? _timer;
  String? _phone;
  String? _pin;

  AuthController({required LoginState initialState}) {
    _currentState = Rx(initialState);
  }

  LoginState get currentState => _currentState.value;
  String? get errorMessage => _errorMessage.value;
  int get countdown => _countdown.value;

  Future<void> sendPhonePIN(String phone) async {
    _phone = phone;
    var res = await _api.sendCode(SendCodeRequest(phone: _phone!));
    _initCountDown();
    _currentState.value = LoginState.pin;
  }

  Future<void> resendPhonePIN() async {
    return sendPhonePIN(_phone!);
  }

  Future<void> verifyPIN(String pin) async {
    _pin = pin;
    var res = await _api.validateCode(ValidateCodeRequest(phone: _phone!, code: _pin!));
    if (res?.status == 'ok') {
      ///TODO: all good, ready to go to main client page
      _currentState.value = LoginState.phone;
      _errorMessage.value = null;
      _timer?.cancel();
    } else {
      _errorMessage.value = res?.data is String ? res?.data as String : 'GENERAL ERROR';
    }
  }

  void _initCountDown() {
    _countdown.value = PIN_RESEND_TIMEOUT;
    _timer = Timer.periodic(const Duration(seconds: 1), _ontimer);
  }

  void _ontimer(Timer timer) {
    if (_countdown.value == 0) {
      timer.cancel();
    } else {
      _countdown.value = _countdown.value - 1;
    }
  }
}
