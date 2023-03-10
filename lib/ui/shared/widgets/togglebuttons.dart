import 'package:flutter/material.dart';

class PageToggleButtons extends StatefulWidget {
  final List<Widget> children;
  final int initialSelectedIndex;
  final PageController controller;

  const PageToggleButtons({
    required this.controller,
    this.children = const [],
    this.initialSelectedIndex = 0,
    super.key,
  });

  @override
  State<PageToggleButtons> createState() => _PageToggleButtonsState();
}

class _PageToggleButtonsState extends State<PageToggleButtons> {
  late int selectedIndex;

  @override
  void initState() {
    selectedIndex = widget.initialSelectedIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: widget.children,
    );
  }
}
