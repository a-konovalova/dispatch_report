import 'package:dispatch_report_app/resources/storage.dart';
import 'package:dispatch_report_app/resources/theme.dart';
import 'package:dispatch_report_app/screens/marten_gild/controller/marten_gild_controller.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class SectionRollingGildScreen extends StatefulWidget {
  const SectionRollingGildScreen({super.key});

  @override
  SectionRollingGildScreenState createState() => SectionRollingGildScreenState();
}

class SectionRollingGildScreenState extends StateMVC<SectionRollingGildScreen> {
  late MartenGildController martenGildController;

  @override
  void initState() {
    martenGildController = MartenGildController();
    martenGildController.updateStream.listen((_) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("СПЦ", style: myStyle.button),
      ),
      body: SafeArea(
          child: Container(
              padding: const EdgeInsets.all(allPadding),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    ],
                  )
                ],
              )
          )
      ),
    );
  }
}