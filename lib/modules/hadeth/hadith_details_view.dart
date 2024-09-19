import 'package:flutter/material.dart';
import 'package:islami_app/core/settings_provider.dart';
import 'package:islami_app/modules/hadeth/hadeth_view.dart';
import 'package:provider/provider.dart';

class HadithDetailsView extends StatelessWidget {
  static const String routeName = "hadithDetails";
  const HadithDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var data =ModalRoute.of(context)?.settings.arguments as HadithData;
    var theme =Theme.of(context);
    var provider =Provider.of<SettingsProvider>(context);
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(image: AssetImage(provider.getHomeBackgroung(),
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
              Text(
                data.title,
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: provider.isDark()
                      ?theme.primaryColorDark
                      :Colors.black,
                ),
              ),
              const Divider(),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) => Text(
                  data.body,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodySmall?.copyWith(height: 1.8,
                    color: provider.isDark()
                        ?theme.primaryColorDark
                        :Colors.black,
                  ),
                ),
                  itemCount:6,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
