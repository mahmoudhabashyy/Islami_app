//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/modules/hadeth/hadith_details_view.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (dataList.isEmpty) loadHadithData();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          "assets/icons/hadith_header.png",
          scale: 1,
        ),
        const Divider(),
        Text(
          "الاحاديث",
          style: theme.textTheme.bodyMedium,
          textAlign: TextAlign.center,
        ),
        const Divider(),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.pushNamed(
                    context,
                    HadithDetailsView.routeName,
                  arguments: dataList[index],
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  dataList[index].title,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            itemCount: dataList.length,
          ),
        ),
      ],
    );
  }

  List<HadithData> dataList = [];

  Future<void> loadHadithData() async {
    String content = await rootBundle.loadString("assets/files/ahadeth.txt");

    List<String> allHadithDataList = content.split("#");

    for (int i = 0; i < allHadithDataList.length; i++) {
      String singleHadith = allHadithDataList[i].trim();

      int titleLength = singleHadith.indexOf("\n");

      String title = singleHadith.substring(0, titleLength);
      String body = singleHadith.substring(titleLength + 1);

      HadithData hadithData = HadithData(
        title: title,
        body: body,
      );
      dataList.add(hadithData);
      debugPrint(body);
    }
    setState(() {});
  }
}

class HadithData {
  String title;
  String body;

  HadithData({
    required this.title,
    required this.body,
  });
}
