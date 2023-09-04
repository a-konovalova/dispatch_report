import 'package:dispatch_report_app/main.dart';
import 'package:dispatch_report_app/resources/storage.dart';
import 'package:dispatch_report_app/resources/theme.dart';
import 'package:dispatch_report_app/screens/report_parameters/controller/report_parameters_controller.dart';
import 'package:dispatch_report_app/screens/report_parameters/view/widgets/gilds_menu.dart';
import 'package:dispatch_report_app/screens/report_parameters/view/widgets/select_date.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class MenuScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const MenuScreen({super.key, required this.scaffoldKey});

  @override
  MenuScreenState createState() => MenuScreenState();
}

class MenuScreenState extends StateMVC<MenuScreen> {
  late ReportParametersController reportParametersController;
  var isMenuOpen = false;

  @override
  void initState() {
    reportParametersController = ReportParametersController();
    reportParametersController.updateStream.listen((_) {
      setState(() {});
    });
    super.initState();
  }

  // final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        key: widget.scaffoldKey,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          'Диспетчерский рапорт',
          style: myStyle.button,
        ),
        leading: GestureDetector(
          onTap: () {
            print(widget.scaffoldKey.currentState);
            widget.scaffoldKey.currentState?.openDrawer();
          },
          child: const CircleAvatar(
            backgroundImage: AssetImage('assets/ava.jpg'),
            // Путь к вашей фотографии
            maxRadius: 20.0, // Размер круглой фотографии
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(flex: 1, child: CircleAvatar(
                        backgroundImage: AssetImage('assets/ava.jpg'),
                        // Путь к вашей фотографии
                        maxRadius: 40.0,
                      )),
                      Flexible(flex: 2, child: Text(
                        'Коновалова Алёна Сергеевна',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ), textAlign: TextAlign.center,
                      )),
                    ])),
            ListTile(
              title: Text('Пункт меню 1'),
              onTap: () {
                // Действие при выборе пункта меню 1
              },
            ),
            ListTile(
              title: Text('Пункт меню 2'),
              onTap: () {
                // Действие при выборе пункта меню 2
              },
            ),
          ],
        ),
      ),
      body: _buildAppMobile(context),
    );
  }

  Widget _buildAppMobile(BuildContext context) {
    return SafeArea(
        child: Container(
            padding: const EdgeInsets.all(allPadding * 2),
            child: Column(
              children: [
                // Text("Выберите период", style: myStyle.headerAction),
                const SizedBox(height: 30),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Начало", style: myStyle.contentAction),
                        SelectDate(
                            started: true,
                            start: reportParametersController.start,
                            end: reportParametersController.end,
                            action: () async {
                              reportParametersController.showBottom(
                                  context, true);
                            }),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Конец", style: myStyle.contentAction),
                        SelectDate(
                            started: false,
                            start: reportParametersController.start,
                            end: reportParametersController.end,
                            action: () async {
                              reportParametersController.showBottom(
                                  context, false);
                            }),
                      ],
                    ),
                    const SizedBox(height: 50),
                    GildsMenu(itemsList: reportParametersController.itemsList),
                  ],
                ),
              ],
            )));
  }
}
