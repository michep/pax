import 'package:flutter/material.dart';
import 'package:pax/ui/clienthomepage/widgets/profilebox.dart';
import 'package:pax/ui/shared/widgets/paxlogo.dart';
import 'package:pax/ui/shared/widgets/togglebutton.dart';
import 'package:pax/ui/shared/widgets/togglebuttons.dart';

class ClientPageMenu extends StatefulWidget {
  final PageController controller;

  const ClientPageMenu({
    required this.controller,
    super.key,
  });

  @override
  State<ClientPageMenu> createState() => _ClientPageMenuState();
}

class _ClientPageMenuState extends State<ClientPageMenu> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return PageToggleButtons(
      controller: widget.controller,
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 20, left: 20, bottom: 20),
          child: PaxLogo(),
        ),
        PageToggleButton(
          onPressed: () => onClick(0),
          icon: const Icon(Icons.medication_outlined),
          label: 'Ваши лекарства',
          selected: currentIndex == 0 ? true : false,
        ),
        PageToggleButton(
          onPressed: () => onClick(1),
          icon: const Icon(Icons.calendar_month_outlined),
          label: 'Календарь',
          selected: currentIndex == 1 ? true : false,
        ),
        PageToggleButton(
          onPressed: () => onClick(2),
          icon: const Icon(Icons.history_outlined),
          label: 'История заказов',
          selected: currentIndex == 2 ? true : false,
        ),
        const Divider(
          indent: 20,
          endIndent: 20,
          height: 20,
        ),
        PageToggleButton(
          onPressed: () => onClick(3),
          icon: const Icon(Icons.chat_outlined),
          label: 'Чат',
          selected: currentIndex == 3 ? true : false,
        ),
        PageToggleButton(
          onPressed: () => onClick(4),
          icon: const Icon(Icons.phone_outlined),
          label: 'Звонок',
          selected: currentIndex == 4 ? true : false,
        ),
        const Spacer(),
        const ProfileBox(),
        const Divider(
          indent: 20,
          endIndent: 20,
          height: 20,
        ),
        PageToggleButton(
          onPressed: () => onClick(5),
          icon: const Icon(Icons.settings_outlined),
          label: 'Настройки',
          selected: currentIndex == 5 ? true : false,
        ),
        PageToggleButton(
          onPressed: () {},
          icon: const Icon(Icons.logout_outlined),
          label: 'Выйти',
        ),
      ],
    );
  }

  void onClick(int idx) {
    setState(() {
      currentIndex = idx;
      widget.controller.jumpToPage(idx);
    });
  }
}
