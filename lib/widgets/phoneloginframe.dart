import 'package:flutter/material.dart';

class PhoneLoginFrame extends StatelessWidget {
  final Widget child;
  const PhoneLoginFrame({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 100,
              ),
              child: Image.asset(
                'pax_logo_small.png',
                height: 26,
                width: 48,
              ),
            ),
          ],
        ),
        Expanded(child: child),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text('copyleft'),
            ),
          ],
        )
      ],
    );
  }
}
