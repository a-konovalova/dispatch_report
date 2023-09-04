import 'dart:async';
import 'package:dispatch_report_app/resources/theme.dart';
import 'package:dispatch_report_app/screens/marten_gild/view/marten_gild_screen.dart';
import 'package:dispatch_report_app/screens/report_parameters/model/parameters_model.dart';
import 'package:dispatch_report_app/screens/section_rolling_gild/view/section_rolling_gild_screen.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class ReportParametersController extends ControllerMVC {
  static ReportParametersController? _this;

  static ReportParametersController? get controller => _this;

  factory ReportParametersController() {
    _this ??= ReportParametersController._();
    return _this!;
  }

  ReportParametersController._();

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

  ParametersModel _parametersModel = ParametersModel();

  DateTime get start => _parametersModel.start;
  DateTime get end => _parametersModel.end;
  List<String> get itemsList => _parametersModel.itemsList;

  showBottom(BuildContext context, bool started) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: started ? start : end,
      firstDate: started ? DateTime(2000, 1, 1) : start,
      lastDate: started ? end : DateTime.now(),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: CustomTheme.lightTheme.copyWith(
            colorScheme: const ColorScheme.light(
                primary: Color(0xff0677AD),
                surface: Color(0xff4E9DC3),
              onSurface: Colors.white
            ),
            inputDecorationTheme: const InputDecorationTheme(
              labelStyle: TextStyle(color: Colors.white)
            ),
            textTheme: const TextTheme(
                labelSmall: TextStyle(color: Colors.white)
            ),
            textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white, // button text color
              ),
            ),
          ),
          child: child!,
        );
      },
    );
    if (picked != null) {
      if (started) {
        _parametersModel.start = picked;
      } else {
        _parametersModel.end = picked;
      }
    }
    updateUI();
  }

  openGildScreen(BuildContext context, String gild) async {
    switch(gild) {
      case "МЦ" :
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const MartenGildScreen(),
        ));
        break;
      case "СПЦ" :
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const SectionRollingGildScreen(),
        ));
        break;
      default:
        break;
    }
    updateUI();
  }
}
