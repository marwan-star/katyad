
import 'package:flutter/material.dart';
import 'package:reminder_app/l10n/app_localizations.dart';

extension LocalizationsExtension on BuildContext {
  AppLocalizations get t => AppLocalizations.of(this)!;
}