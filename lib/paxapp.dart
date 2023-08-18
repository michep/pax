import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pax/ui/clienthomepage/pages/clienthomepage.dart';
import 'ui/phoneloginpage/pages/phoneloginpage.dart';

class PaxApp extends StatelessWidget {
  const PaxApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CalendarControllerProvider(
      controller: EventController(),
      child: GetMaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme),
        ),
        scrollBehavior: AppScrollBehavior(),
        title: 'PAx',
        // home: PhoneLoginPage(),
        home: ClientHomePage(),
      ),
    );
  }
}

class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
