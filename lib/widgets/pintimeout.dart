import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pax/controllers/auth_contoller.dart';

class PinTimeoutAndResend extends StatelessWidget {
  final auth = Get.find<AuthController>();
  PinTimeoutAndResend({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (auth.countdown != 0) {
        return TextButton(
          onPressed: null,
          child: Text('отправить код повторно через ${auth.countdown}'),
        );
      } else {
        return TextButton(
          onPressed: auth.resendPhonePIN,
          child: const Text('отправить код повторно'),
        );
      }
    });
  }
}
