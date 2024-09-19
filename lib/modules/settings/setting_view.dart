import 'dart:developer';

import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/core/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  List<String> language = [
    "English",
    "عربي",
  ];

  List<String> themes = [
    "light",
    "Dark",
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var provider = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 20.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 10,
          ),
          CustomDropdown<String>(
            hintText: 'Select job role',
            items: language,
            initialItem: provider.currentLanguageCode == "en"
                ? language[0]
                : language[1],
            onChanged: (value) {
              if (value == "English") {
                provider.changeLanguageCode("en");
              }
              if (value == "عربي") {
                provider.changeLanguageCode("ar");
              }
              log('changing value to: $value');
            },
            decoration: CustomDropdownDecoration(
              closedFillColor:
              provider.isDark() ? const Color(0xFF141A2E) : Colors.white,
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color:
                provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up_rounded,
                color:
                provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
              expandedFillColor:
              provider.isDark() ? const Color(0xFF141A2E) : Colors.white,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
            "theme",
            style: theme.textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 20,
          ),
          CustomDropdown<String>(
            hintText: 'Select job role',
            items: themes,
            initialItem: provider.currentThemeMode == ThemeMode.light
                ? themes[0]
                : themes[1],
            onChanged: (value) {
              if (value == "Dark") {
                provider.changeThemeMode(ThemeMode.dark);
              }
              if (value == "light") {
                provider.changeThemeMode(ThemeMode.light);
              }
              log('changing value to: $value');
            },
            decoration: CustomDropdownDecoration(
              closedFillColor:
                  provider.isDark() ? const Color(0xFF141A2E) : Colors.white,
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color:
                    provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up_rounded,
                color:
                provider.isDark() ? theme.primaryColorDark : Colors.black,
              ),
              expandedFillColor:
                  provider.isDark() ? const  Color(0xFF141A2E) : Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
