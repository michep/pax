import 'package:flutter/material.dart';

class Backdrop extends StatelessWidget {
  const Backdrop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        image: const DecorationImage(
          alignment: Alignment.topLeft,
          fit: BoxFit.cover,
          image: AssetImage('pax_splash.jpg'),
          // colorFilter: ColorFilter.mode(Colors.black, BlendMode.overlay),
        ),
      ),
    );
  }
}
