
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/settings_provider.dart';
import 'package:islami_app/modules/quran/quran_view.dart';
import 'package:provider/provider.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "quranDetails";
  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  @override
  Widget build(BuildContext context) {
    var data = ModalRoute.of(context)?.settings.arguments as SuraData;
    var theme = Theme.of(context);
    var provider =Provider.of<SettingsProvider>(context);
    if (content.isEmpty) loadData(data.suraNumber);
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              provider.getHomeBackgroung(),
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'اسلامي',
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(
            top: 10,
            left: 30,
            bottom: 80,
            right: 30,
          ),
          padding: const EdgeInsets.only(
            top: 20,
            left: 30,
            bottom: 20,
            right: 30,
          ),
          decoration: BoxDecoration(
            color: provider.isDark()
                ?const Color(0xFF141A2E).withOpacity(0.8)
                :const Color(0xFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '  سورة ${data.suraName} ',
                    style: theme.textTheme.bodyMedium?.copyWith(
                      color: provider.isDark()
                          ?theme.primaryColorDark
                          :Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.play_circle_fill_rounded,
                    color: provider.isDark()
                        ?theme.primaryColorDark
                        :Colors.black,
                    //color: theme.primaryColor,
                  ),
                ],
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => Text(
                    "{${index + 1}} ${versesList[index]}",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(height: 1.8,
                      color: provider.isDark()
                          ?theme.primaryColorDark
                          :Colors.black,
                    ),
                  ),
                  itemCount: versesList.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String content = "";
  List<String> versesList = [];


  Future<void> loadData(String suraNumber) async {
    content = await rootBundle.loadString("assets/files/$suraNumber.txt");
    versesList = content.split("\n");
    setState(() {});
    debugPrint(content);
  }
}
