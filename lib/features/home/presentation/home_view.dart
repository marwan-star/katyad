import 'package:flutter/material.dart';
import 'package:reminder_app/l10n/app_localizations.dart';

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
        title: Column(
          children: [
            Text(AppLocalizations.of(context)!.hell),
            const Text('مەڕوان'),
          ],
        ),
      ),

      body: Text(AppLocalizations.of(context)!.welcome),
    );
  }
}
