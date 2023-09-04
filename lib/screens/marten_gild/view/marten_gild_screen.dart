import 'package:dispatch_report_app/resources/storage.dart';
import 'package:dispatch_report_app/resources/theme.dart';
import 'package:dispatch_report_app/screens/marten_gild/controller/marten_gild_controller.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class MartenGildScreen extends StatefulWidget {
  const MartenGildScreen({super.key});

  @override
  MartenGildScreenState createState() => MartenGildScreenState();
}

class MartenGildScreenState extends StateMVC<MartenGildScreen> {
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
        title: Text("МЦ", style: myStyle.button),
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