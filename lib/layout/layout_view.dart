import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/core/settings_provider.dart';
import 'package:islami_app/modules/hadeth/hadeth_view.dart';
import 'package:islami_app/modules/quran/quran_view.dart';
import 'package:islami_app/modules/radio/radio_view.dart';
import 'package:islami_app/modules/settings/setting_view.dart';
import 'package:islami_app/modules/tasbeh/tasbeh_view.dart';
import 'package:provider/provider.dart';

class LayOutView extends StatefulWidget {
  static const String routeName = "layout";
  const LayOutView({super.key});

  @override
  State<LayOutView> createState() => _LayOutViewState();
}
class _LayOutViewState extends State<LayOutView> {
  int selectedIndex =0;
  List<Widget>screenList =
  [
    QuranView(),
    const HadethView(),
    const TasbehView(),
    const RadioView(),
    const SettingsView(),
  ];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var lang =AppLocalizations.of(context)!;
    var provider = Provider.of<SettingsProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.getHomeBackgroung(),
        ),
        Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title:  Text(
              lang.islami,
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value)
            {
              selectedIndex =value;
              setState(() {});
            },
            selectedLabelStyle: const TextStyle(),
            items:  [
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/icons/moshaf_icon.png")),
                label: lang.quran,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(
                   AssetImage("assets/icons/quran_icon.png"),
                ),
                label: lang.hadith,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/icons/sebha_icon.png")),
                label: lang.tasbeh,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(AssetImage("assets/icons/radio_icon.png")),
                label: lang.radio,
              ),
              BottomNavigationBarItem(
                icon: const Icon(
                  Icons.settings,
                ),
                label: lang.settings,
              ),
            ],
          ),
          body: screenList[selectedIndex],
        ),
      ],
    );
  }
}
