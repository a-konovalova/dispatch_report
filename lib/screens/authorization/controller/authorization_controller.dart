import 'dart:async';
import 'package:dispatch_report_app/main.dart';
import 'package:dispatch_report_app/screens/report_parameters/view/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../resources/enum.dart';
import '../model/authorization_model.dart';

class AuthorizationController extends ControllerMVC {
  static AuthorizationController? _this;

  static AuthorizationController? get controller => _this;

  factory AuthorizationController() {
    _this ??= AuthorizationController._();
    return _this!;
  }

  AuthorizationController._();

  final _updateStreamController = StreamController<void>.broadcast();

  Stream<void> get updateStream => _updateStreamController.stream;

  void updateUI() {
    _updateStreamController.add(null);
  }

  @override
  void dispose() {
    _updateStreamController.close();
    super.dispose();
  }

  final storage = const FlutterSecureStorage();

  AuthorizationModel authorizationModel = AuthorizationModel();

  LoginState get loginState => authorizationModel.loginState;

  authorization(BuildContext context, String log, String pas,
      {bool noLogin = false, bool changedPassword = false}) async {
    Navigator.of(context).pop();
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => MenuScreen(scaffoldKey: scaffoldKey),
      settings: const RouteSettings(name: "/PageTab"),
    ));
    updateUI();
  }
}
