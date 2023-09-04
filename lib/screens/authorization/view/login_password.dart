import 'package:dispatch_report_app/resources/theme.dart';
import 'package:dispatch_report_app/screens/authorization/view/widgets/input_button_auth_screen.dart';
import 'package:dispatch_report_app/screens/authorization/view/widgets/login_password_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../controller/authorization_controller.dart';

class LoginPassword extends StatefulWidget {
  const LoginPassword({super.key});

  @override
  LoginPasswordState createState() => LoginPasswordState();
}

class LoginPasswordState extends StateMVC<LoginPassword> {
  late AuthorizationController authController;
  late TextEditingController loginController;
  late TextEditingController passwordController;

  @override
  void initState() {
    authController = AuthorizationController();
    loginController = TextEditingController();
    passwordController = TextEditingController();
    authController.updateStream.listen((_) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset('assets/intro_image.png', height: 250),
      Text(
        "Войти".toUpperCase(),
        style: myStyle.authTitleText,
      ),
      const SizedBox(height: 30),
      LoginPasswordField(
          textController: loginController, canIcon: false, hint: "Логин"),
      const SizedBox(height: 20),
      LoginPasswordField(
          textController: passwordController,
          canIcon: false,
          password: true,
          hint: "Пароль"),
      const SizedBox(height: 30),
      InputButtonAuthScreen(
          action: (() async {
            authController.authorization(
                context, loginController.text, passwordController.text);
          }),
          label: "Продолжить"),
    ]);
  }
}
