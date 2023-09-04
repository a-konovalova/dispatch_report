import 'package:flutter/material.dart';

class LoginContainer extends StatelessWidget {
  final Widget child;

  const LoginContainer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).colorScheme.surface,
        alignment: Alignment.center,
        child: ConstrainedBox(
            constraints: const BoxConstraints(
                maxHeight: 600, minHeight: 300, maxWidth: 400, minWidth: 250),
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.primary, width: 2),
                    color: Theme.of(context).colorScheme.background,
                    boxShadow: const [
                      BoxShadow(
                          offset: Offset(.0, 4),
                          spreadRadius: 4,
                          color: Color(0x22000000),
                          blurRadius: 4)
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: child)));
  }
}
