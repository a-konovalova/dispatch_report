import 'dart:async';

import 'package:mvc_pattern/mvc_pattern.dart';

class MartenGildController extends ControllerMVC {
  static MartenGildController? _this;

  static MartenGildController? get controller => _this;

  factory MartenGildController() {
    _this ??= MartenGildController._();
    return _this!;
  }

  MartenGildController._();

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