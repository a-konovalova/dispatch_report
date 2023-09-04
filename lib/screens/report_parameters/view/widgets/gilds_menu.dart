import 'package:dispatch_report_app/screens/report_parameters/controller/report_parameters_controller.dart';
import 'package:dispatch_report_app/screens/report_parameters/view/widgets/menu_item_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class GildsMenu extends StatefulWidget {
  List<String> itemsList;

  // Function() action;

  GildsMenu({super.key, required this.itemsList
      // , required this.action
      });

  @override
  GildsMenuState createState() => GildsMenuState();
}

class GildsMenuState extends StateMVC<GildsMenu> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        for (var i = 0; i < widget.itemsList.length; i++)
          MenuItemButton(
              label: widget.itemsList[i],
              action: (() async {
                ReportParametersController()
                    .openGildScreen(context, widget.itemsList[i]);
              }))
      ],
    );
  }
}
