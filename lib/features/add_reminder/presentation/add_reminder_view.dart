import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/core/constants/icon_urls.dart';
import 'package:reminder_app/core/extensions/global_extensions.dart';
import 'package:reminder_app/core/widgets/custom_svg_icon.dart';

class AddReminderView extends StatefulWidget {
  const AddReminderView({super.key});

  @override
  State<AddReminderView> createState() => _AddReminderViewState();
}

class _AddReminderViewState extends State<AddReminderView> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("add"));
  }
}
