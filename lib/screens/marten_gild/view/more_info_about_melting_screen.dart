import 'package:dispatch_report_app/screens/marten_gild/controller/more_info_screen_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../resources/storage.dart';
import '../../../resources/theme.dart';

class MoreInfoAboutMeltingScreen extends StatefulWidget {
  const MoreInfoAboutMeltingScreen({super.key});

  @override
  MartenGildScreenState createState() => MartenGildScreenState();
}

class MartenGildScreenState extends StateMVC<MoreInfoAboutMeltingScreen> {
  late MoreInfoController moreInfoController;

  @override
  void initState() {
    moreInfoController = MoreInfoController();
    moreInfoController.updateStream.listen((_) {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Информация о плавке", style: myStyle.button),
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