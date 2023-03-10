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
          child: Text.rich(
            TextSpan(
              children: [
                const TextSpan(text: 'отправить код повторно через ', style: TextStyle(color: Colors.grey)),
                TextSpan(text: '${auth.countdown}', style: const TextStyle(color: Colors.black)),
              ],
            ),
          ),
        );
      } else {
        return TextButton(
          onPressed: auth.resendPhonePIN,
          child: const Text(
            'отправить код повторно',
            style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.underline,
              decorationColor: Colors.black,
            ),
          ),
        );
      }
    });
  }
}
