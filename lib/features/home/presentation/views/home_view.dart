import 'package:flutter/material.dart';
import 'package:reminder_app/core/constants/icon_urls.dart';
import 'package:reminder_app/core/extensions/global_extensions.dart';
import 'package:reminder_app/core/widgets/custom_svg_icon.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75, // increase as needed

        title: Column(
          crossAxisAlignment: .start,
          children: [
            Text(context.t.welcome),
            Text(
              "Marwan",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ],
        ),

        actions: [
          CustomSvgIcon(
            icon: IconUrls.notification,
            onTap: () {
              print("pressed");
            },
          ),
        ],
      ),

      body: Placeholder(),
    );
  }
}
