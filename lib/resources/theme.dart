import 'package:flutter/material.dart';

MyStyle myStyle = MyAppStyle();

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
        useMaterial3: true,
        fontFamily: 'SF',
        colorScheme: const ColorScheme.light(
          primary: Color(0xff0677AD),
          onPrimary: Color(0xff04BAC4),
          secondary: Color(0xffD5D9E1),
          onSecondary: Color(0xff9E9E9E),
          surface: Color(0xff4E9DC3),
          onSurface: Color(0xff05608C),
          error: Color(0xffdc3545),
          background: Colors.white,
        ),
    datePickerTheme: DatePickerThemeData(
      yearForegroundColor: MaterialStateProperty.all<Color>(Colors.white),
      headerForegroundColor: Colors.white,
      rangeSelectionBackgroundColor: Colors.white,
      dayForegroundColor: MaterialStateProperty.all<Color>(Colors.white),
      todayForegroundColor: MaterialStateProperty.all<Color>(Colors.white),
    )
    );
  }
}

class MyStyle {
  late double coefficient;
  late TextStyle hintText;
  late TextStyle inputTextField;
  late TextStyle authTitleText;
  late TextStyle button;
  late TextStyle headerAction;
  late TextStyle contentAction;
}

class MyAppStyle extends MyStyle {
  int temp = 4;

  @override
  TextStyle get hintText => TextStyle(
        fontSize: (10 + temp) * coefficient,
        color: CustomTheme.lightTheme.colorScheme.onSecondary,
        fontWeight: FontWeight.w300,
      );

  @override
  TextStyle get inputTextField => TextStyle(
      fontSize: (12 + temp) * 1,
      fontWeight: FontWeight.w900,
      color: CustomTheme.lightTheme.colorScheme.primary);

  @override
  TextStyle get authTitleText => TextStyle(
      fontSize: (14 + temp) * 1,
      fontWeight: FontWeight.w500,
      color: CustomTheme.lightTheme.colorScheme.primary);

  @override
  TextStyle get button => TextStyle(
      fontSize: (12 + temp) * coefficient,
      fontWeight: FontWeight.bold,
      color: Colors.white);

  @override
  TextStyle get headerAction => TextStyle(
      fontSize: (20 + temp) * coefficient,
      fontWeight: FontWeight.w500,
      color: CustomTheme.lightTheme.colorScheme.onSurface);

  @override
  TextStyle get contentAction => TextStyle(
      fontSize: (16 + temp) * coefficient,
      fontWeight: FontWeight.w400,
      color: Colors.black87);
}
