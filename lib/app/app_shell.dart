import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reminder_app/core/constants/icon_urls.dart';
import 'package:reminder_app/core/extensions/global_extensions.dart';
import 'package:reminder_app/core/theme/app_colors.dart';
import 'package:reminder_app/core/widgets/custom_svg_icon.dart';
import 'package:reminder_app/features/add_reminder/presentation/views/add_reminder_view.dart';
import 'package:reminder_app/features/calendar/presentation/views/calendar_view.dart';
import 'package:reminder_app/features/home/presentation/views/home_view.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  int currentIndex = 0;
  List pages = [HomeView(), AddReminderView(), CalendarView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Stack(
        alignment: Alignment.bottomCenter,

        children: [
          SizedBox.expand(child: pages[currentIndex]),

          // Floating nav bar on top
          Positioned(
            bottom: 18,
            left: 18,
            right: 18,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CustomSvgIcon(
                      icon: IconUrls.home,
                      onTap: () => setState(() => currentIndex = 0),
                    ),
                    GestureDetector(
                      onTap: () => setState(() => currentIndex = 1),
                      child: CircleAvatar(
                        radius: 32,
                        backgroundColor: AppColors.purple,
                        child: CustomSvgIcon(
                          icon: IconUrls.add,
                          color: AppColors.lightWhite,
                          onTap: () => setState(() => currentIndex = 1),
                        ),
                      ),
                    ),
                    CustomSvgIcon(
                      icon: IconUrls.calendar,
                      onTap: () => setState(() => currentIndex = 2),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
