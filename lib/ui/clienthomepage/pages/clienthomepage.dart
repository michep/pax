import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:pax/ui/clienthomepage/widgets/medcalendar.dart';
import 'package:pax/ui/clienthomepage/widgets/medtable.dart';
import 'package:pax/ui/clienthomepage/widgets/pagemenu.dart';

class ClientHomePage extends StatefulWidget {
  const ClientHomePage({super.key});

  @override
  State<ClientHomePage> createState() => _ClientHomePageState();
}

class _ClientHomePageState extends State<ClientHomePage> {
  final PageController controller = PageController();
  final _key = GlobalKey();

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      var size = _key.currentContext!.size;
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

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
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: FractionallySizedBox(
                        heightFactor: 1,
                        widthFactor: 1,
                        child: PageView(
                          key: _key,
                          controller: controller,
                          physics: const NeverScrollableScrollPhysics(),
                          children: const [
                            MedTable(),
                            MedCalendar(),
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
