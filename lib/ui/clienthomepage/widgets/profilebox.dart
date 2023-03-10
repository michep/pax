import 'package:flutter/material.dart';

class ProfileBox extends StatelessWidget {
  const ProfileBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        CircleAvatar(
          radius: 20,
          child: Text('В'),
        ),
        SizedBox(width: 8),
        Text('Виталий'),
      ],
    );
  }
}
