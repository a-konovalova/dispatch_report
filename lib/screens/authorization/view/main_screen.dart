import 'package:dispatch_report_app/resources/theme.dart';
import 'package:dispatch_report_app/screens/authorization/controller/authorization_controller.dart';
import 'package:dispatch_report_app/screens/authorization/view/widgets/login_container.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import 'login_password.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends StateMVC {
  late AuthorizationController authController;

  @override
  void initState() {
    authController = AuthorizationController();
    authController.updateStream.listen((_) {
      setState(() { });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    myStyle.coefficient = 2 - MediaQuery.of(context).textScaleFactor;
    Widget main;
    switch(authController.loginState) {
      default:
        main = const LoginPassword();
    }

    return Scaffold(
        body: Builder(
          builder: (BuildContext context) {
            return LoginContainer(child: main);
          },
        ),
    );
  }
}