import 'package:flutter/material.dart';
import 'package:pax/ui/clienthomepage/widgets/medtable.dart';
import 'package:pax/ui/clienthomepage/widgets/pagemenu.dart';

class ClientHomePage extends StatefulWidget {
  const ClientHomePage({super.key});

  @override
  State<ClientHomePage> createState() => _ClientHomePageState();
}

class _ClientHomePageState extends State<ClientHomePage> {
  final PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.black,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, bottom: 20, right: 0),
                  child: ClientPageMenu(
                    controller: controller,
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 250,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xFFC4DBEA),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: PageView(
                      controller: controller,
                      physics: const NeverScrollableScrollPhysics(),
                      children: const [
                        MedTable(),
                        Text('календарь'),
                        Text('история заказов'),
                        Text('чат'),
                        Text('звонок'),
                        Text('настройки'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
