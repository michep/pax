import 'package:flutter/material.dart';

class PaxLogo extends StatelessWidget {
  const PaxLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'pax_logo_small.png',
      height: 26,
      width: 58,
    );
  }
}
