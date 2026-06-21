import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/app.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const App()));
}
