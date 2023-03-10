import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pax/controllers/auth_contoller.dart';
import 'package:pax/ui/clienthomepage/pages/clienthomepage.dart';
import 'package:pax/ui/phoneloginpage/widgets/pintimeout.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneLoginPin extends StatefulWidget {
  const PhoneLoginPin({super.key});

  @override
  State<PhoneLoginPin> createState() => _PhoneLoginPinState();
}

class _PhoneLoginPinState extends State<PhoneLoginPin> {
  final auth = Get.find<AuthController>();
  final pinCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Ввести смс-код',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 270,
          child: PinCodeTextField(
            autoFocus: true,
            controller: pinCont,
            appContext: context,
            length: 4,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(10),
              selectedColor: Colors.blue,
              inactiveColor: Colors.grey,
              activeColor: Colors.grey,
              fieldWidth: 60,
              fieldHeight: 60,
            ),
            onChanged: (value) {},
          ),
        ),
        const SizedBox(height: 20),
        PinTimeoutAndResend(),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(360, 60),
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () => verifyPIN(pinCont.text),
          child: const Text(
            'Войти',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  void verifyPIN(String pin) async {
    var ok = await auth.verifyPIN(pinCont.text);
    if (ok) Get.offAll(() => const ClientHomePage());
  }
}
