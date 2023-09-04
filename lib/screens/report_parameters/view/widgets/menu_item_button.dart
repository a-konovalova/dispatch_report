import 'package:dispatch_report_app/resources/storage.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../../resources/theme.dart';

class MenuItemButton extends StatefulWidget {
  String label;
  final Function() action;

  MenuItemButton({super.key, required this.label, required this.action});

  @override
  MenuItemButtonState createState() => MenuItemButtonState();
}

class MenuItemButtonState extends StateMVC<MenuItemButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(
            horizontal: allPadding * 3, vertical: allPadding),
        constraints: const BoxConstraints(maxWidth: 100, maxHeight: 80),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(10)),
        child: InkWell(
          onTap: widget.action,
          child: Container(
            alignment: Alignment.center,
            child: Text(
              widget.label,
              style: myStyle.button,
            ),
          ),
        ));
  }
}
