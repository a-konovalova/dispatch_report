import 'package:dispatch_report_app/screens/authorization/controller/authorization_controller.dart';
import 'package:flutter/material.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

import '../../../../resources/storage.dart';
import '../../../../resources/theme.dart';

class LoginPasswordField extends StatefulWidget {
  final bool password;
  final bool canIcon;
  final TextEditingController textController;
  final String hint;
  final Function()? change;

  const LoginPasswordField(
      {super.key,
      this.password = false,
      required this.textController,
      required this.canIcon,
      this.hint = "",
      this.change});

  @override
  LoginPasswordFieldState createState() => LoginPasswordFieldState();
}

class LoginPasswordFieldState extends StateMVC<LoginPasswordField> {
  AuthorizationController authController = AuthorizationController();
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          const BoxConstraints(maxWidth: 300, minWidth: 220, maxHeight: 40),
      child: TextFormField(
        obscureText: widget.password ? !isVisible : false,
        controller: widget.textController,
        cursorColor: Theme.of(context).colorScheme.primary,
        style: myStyle.inputTextField,
        decoration: InputDecoration(
            hintStyle: myStyle.hintText,
            hintText: widget.hint,
            contentPadding: const EdgeInsets.symmetric(
                vertical: allPadding, horizontal: allPadding * 2),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2,
                  color: widget.textController.text != ""
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.secondary,
                )),
            enabled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2,
                  color: widget.textController.text != ""
                      ? Theme.of(context).colorScheme.primary
                      : Theme.of(context).colorScheme.secondary,
                )),
            suffixIcon: widget.password
                ? MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: GestureDetector(
                        onTap: () {
                          isVisible = widget.textController.text != ""
                              ? !isVisible
                              : isVisible;
                          authController.updateUI();
                        },
                        child: Icon(
                          isVisible ? Icons.visibility : Icons.visibility_off,
                          color: widget.textController.text != ""
                              ? CustomTheme.lightTheme.colorScheme.primary
                              : CustomTheme.lightTheme.colorScheme.secondary,
                        )))
                : const SizedBox()),
        onChanged: (value) {
          authController.updateUI();
        },
      ),
    );
  }
}
