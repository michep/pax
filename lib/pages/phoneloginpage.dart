import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pax/controllers/auth_contoller.dart';
import 'package:pax/widgets/backdrop.dart';
import 'package:pax/widgets/phoneloginframe.dart';
import 'package:pax/widgets/phoneloginphone.dart';
import 'package:pax/widgets/phoneloginpin.dart';

class PhoneLoginPage extends StatelessWidget {
  PhoneLoginPage({super.key});
  final AuthController auth = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.black,
        child: Stack(
          alignment: Alignment.centerRight,
          children: [
            const Backdrop(),
            FractionallySizedBox(
              widthFactor: 0.5,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: PhoneLoginFrame(
                    child: Obx(() => pageSelection(auth.currentState)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget pageSelection(LoginState state) {
    if (state == LoginState.phone) return const PhoneLoginPhone();
    if (state == LoginState.pin) return const PhoneLoginPin();
    return const Placeholder();
  }
}
