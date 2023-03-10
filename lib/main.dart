import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pax/api/auth_api.dart';
import 'package:pax/api/auth_api_mock.dart';
import 'package:pax/api/auth_interface.dart';
import 'package:pax/controllers/auth_contoller.dart';
import 'package:pax/paxapp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put<AuthAPIInterface>(AuthAPIMockup((path) => Uri.https('localhost', path)));
  Get.put<AuthController>(AuthController(initialState: LoginState.phone));
  runApp(const PaxApp());
}
