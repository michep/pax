import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:pax/controllers/auth_contoller.dart';

class PhoneLoginPhone extends StatefulWidget {
  const PhoneLoginPhone({super.key});

  @override
  State<PhoneLoginPhone> createState() => _PhoneLoginPhoneState();
}

class _PhoneLoginPhoneState extends State<PhoneLoginPhone> {
  final auth = Get.find<AuthController>();
  final phoneCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Личный кабинет',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 360,
          child: TextField(
            controller: phoneCont,
            autofocus: true,
            inputFormatters: [
              MaskTextInputFormatter(
                mask: '+7 (###) ###-##-##',
                filter: {"#": RegExp(r'[0-9]')},
                type: MaskAutoCompletionType.lazy,
              ),
            ],
            decoration: InputDecoration(
              labelText: 'Номер телефона',
              hintText: '+7 (###) ###-##-##',
              focusColor: const Color(0xFFAFC4D1),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(360, 60),
            backgroundColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () => auth.sendPhonePIN(phoneCont.text),
          child: const Text(
            'Войти',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
