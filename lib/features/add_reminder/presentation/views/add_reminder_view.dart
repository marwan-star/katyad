import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
