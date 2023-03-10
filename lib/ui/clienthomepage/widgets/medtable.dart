import 'package:flutter/material.dart';
import 'package:pax/ui/clienthomepage/widgets/meddatatable.dart';
import 'package:pax/ui/clienthomepage/widgets/medtablebanner.dart';

class MedTable extends StatelessWidget {
  const MedTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topLeft,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              child: MedTableBanner(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: const Padding(
                padding: EdgeInsets.all(10),
                child: MedDataTable(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
