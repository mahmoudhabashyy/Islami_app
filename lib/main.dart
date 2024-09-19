import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/core/application_theme_manager.dart';
import 'package:islami_app/core/settings_provider.dart';
import 'package:islami_app/layout/layout_view.dart';
import 'package:islami_app/modules/hadeth/hadith_details_view.dart';
import 'package:islami_app/modules/quran/quran_details_view.dart';
import 'package:provider/provider.dart';

import 'modules/splash/splash_view.dart';


// ToDo : 1- Observer Design Patterns

// ToDo : 2- Singleton Design Patterns

void main() {
  runApp(
      ChangeNotifierProvider(
        create: (context) => SettingsProvider(),
          child: const MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider =Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: provider.currentThemeMode,
      theme: ApplicationThemeManager.lightThemeData,
      darkTheme: ApplicationThemeManager.darkThemeData ,
      locale: Locale(provider.currentLanguageCode),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales:AppLocalizations.supportedLocales,
      title: 'Flutter Demo',

      initialRoute: "/",
      routes: {
        SplashView.routeName : (context) => const SplashView(),
        LayOutView.routeName : (context) => const LayOutView(),
        QuranDetailsView.routeName:(context) =>  const QuranDetailsView(),
        HadithDetailsView.routeName:(context) =>  const HadithDetailsView(),
      },
    );
  }
}
