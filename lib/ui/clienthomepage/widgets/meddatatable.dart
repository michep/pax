import 'package:flutter/material.dart';

class MedDataTable extends StatelessWidget {
  const MedDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Expanded(
              flex: 4,
              child: Text('Лекарство'),
            ),
            Expanded(
              flex: 3,
              child: Text('Количество'),
            ),
            Expanded(
              flex: 3,
              child: Text('Период'),
            ),
            Expanded(
              flex: 2,
              child: Text('Время'),
            ),
          ],
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Table(
              columnWidths: const {
                0: FractionColumnWidth(4 / 12),
                1: FractionColumnWidth(3 / 12),
                2: FractionColumnWidth(3 / 12),
                3: FractionColumnWidth(2 / 12),
              },
              children: const [
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
                TableRow(children: [
                  TableCell(child: Text('asdasdasd', style: TextStyle(fontSize: 48))),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                  TableCell(child: Text('asdasdasd')),
                ]),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
