import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pax/controllers/auth_contoller.dart';
import 'package:pax/widgets/pintimeout.dart';
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
        const Text('Ввести смс-код', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
        const SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width / 6,
          child: PinCodeTextField(
            autoFocus: true,
            controller: pinCont,
            appContext: context,
            length: 4,
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              selectedColor: Colors.blue,
              inactiveColor: Colors.grey,
              activeColor: Colors.grey,
            ),
            onChanged: (_) {},
          ),
        ),
        const SizedBox(height: 20),
        PinTimeoutAndResend(),
        const SizedBox(height: 20),
        SizedBox(
          width: MediaQuery.of(context).size.width / 4,
          height: 48,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            onPressed: () => auth.verifyPIN(pinCont.text),
            child: const Text(
              'Войти',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
