import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'pages/phoneloginpage.dart';

class PaxApp extends StatelessWidget {
  const PaxApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PAx',
      home: PhoneLoginPage(),
    );
  }
}
