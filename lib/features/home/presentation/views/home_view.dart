import 'package:flutter/cupertino.dart';
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
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomSvgIcon(icon: IconUrls.home, onTap: () {}),
            CircleAvatar(
              radius: 32,
              backgroundColor: Colors.amber[100],
              child: CustomSvgIcon(icon: IconUrls.add, onTap: () {}),
            ),
            CustomSvgIcon(icon: IconUrls.calendar, onTap: () {}),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 75,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            onTap: () => print("pressed"),
          ),
        ],
      ),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        

         
        ],
      ),
    );
  }
}
