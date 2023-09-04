import 'package:dispatch_report_app/resources/storage.dart';
import 'package:dispatch_report_app/resources/theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mvc_pattern/mvc_pattern.dart';
import 'package:sizer/sizer.dart';

class SelectDate extends StatefulWidget {
  bool started;
  DateTime start;
  DateTime end;
  final Function() action;

  SelectDate(
      {super.key,
      required this.started,
      required this.start,
      required this.end,
      required this.action});

  @override
  SelectDateState createState() => SelectDateState();
}

class SelectDateState extends StateMVC<SelectDate> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 200, maxHeight: 60),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        child: Container(
          alignment: Alignment.center,
          child: Text(
            DateFormat('dd MMMM yyyy')
                .format(widget.started ? widget.start : widget.end),
            style: myStyle.button,
          ),
        ),
        onTap: widget.action,
      ),
    );
  }
}
