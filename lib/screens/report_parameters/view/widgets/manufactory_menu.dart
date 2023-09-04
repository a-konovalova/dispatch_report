import 'package:dispatch_report_app/screens/report_parameters/controller/report_parameters_controller.dart';
import 'package:dispatch_report_app/screens/report_parameters/view/widgets/menu_item_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class ManufactoryMenu extends StatefulWidget {
  List<String> itemsList;

  // Function() action;

  ManufactoryMenu({super.key, required this.itemsList
      // , required this.action
      });

  @override
  ManufactoryMenuState createState() => ManufactoryMenuState();
}

class ManufactoryMenuState extends StateMVC<ManufactoryMenu> {
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
