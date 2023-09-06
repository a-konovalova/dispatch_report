import 'dart:async';

import 'package:mvc_pattern/mvc_pattern.dart';

class MoreInfoController extends ControllerMVC {
  static MoreInfoController? _this;

  static MoreInfoController? get controller => _this;

  factory MoreInfoController() {
    _this ??= MoreInfoController._();
    return _this!;
  }

  MoreInfoController._();

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


}