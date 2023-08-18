import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

class MedCalendar extends StatelessWidget {
  const MedCalendar({super.key});

  @override
  Widget build(BuildContext context) {
    return MonthView(
      initialMonth: DateTime.now(),
      headerBuilder: (date) => SizedBox.shrink(),
      cellAspectRatio: 1,
      // cellAspectRatio: () {
      //   // var h = MediaQuery.of(context).size.height;
      //   // var w = MediaQuery.of(context).size.width;
      //   var h = 816;
      //   var w = 1099;
      //   var ch = h / 6;
      //   var cw = w / 7;
      //   return 1.5;
      // }(),
    );

    // return Placeholder();
  }
}
