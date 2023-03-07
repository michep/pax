import 'package:flutter/material.dart';

class Backdrop extends StatelessWidget {
  const Backdrop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        image: DecorationImage(
          alignment: Alignment.topLeft,
          fit: BoxFit.cover,
          image: AssetImage('pax_splash.jpg'),
        ),
      ),
    );
  }
}
