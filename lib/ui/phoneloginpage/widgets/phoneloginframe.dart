import 'package:flutter/material.dart';
import 'package:pax/ui/shared/widgets/paxlogo.dart';

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
          children: const [
            Padding(
              padding: EdgeInsets.only(
                bottom: 100,
              ),
              child: PaxLogo(),
            ),
          ],
        ),
        Expanded(
          child: child,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Text(
                '(C) 2023 PAx. Все права защищены.',
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        )
      ],
    );
  }
}
