import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../../resources/storage.dart';
import '../../../../resources/theme.dart';
import '../../controller/authorization_controller.dart';

class InputButtonAuthScreen extends StatefulWidget {
  final Function() action;
  final String label;
  bool canIcon;

  InputButtonAuthScreen(
      {super.key,
      required this.action,
      required this.label,
      this.canIcon = true});

  @override
  InputButtonAuthScreenState createState() => InputButtonAuthScreenState();
}

class InputButtonAuthScreenState extends StateMVC<InputButtonAuthScreen> {
  late AuthorizationController authorizationController;

  @override
  void initState() {
    authorizationController = AuthorizationController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      InkWell(
          onTap:
            widget.action,
          child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: allPadding * 5, vertical: allPadding),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Theme.of(context).colorScheme.primary),
              alignment: Alignment.center,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                widget.canIcon
                    ? const Icon(Icons.input,
                        // size: correctSize(16.sp, 20, 20),
                        color: Colors.white)
                    : const SizedBox(),
                widget.canIcon
                    ? const SizedBox(width: allPadding)
                    : const SizedBox(),
                Text(widget.label.toUpperCase(), style: myStyle.button)
              ])))
    ]);
  }
}
