import 'package:flutter/material.dart';

import '../quran_view.dart';

class SuraTitleWidget extends StatelessWidget {
  final SuraData data;
  const SuraTitleWidget({super.key,
    required this.data,
  }
  );

  @override
  Widget build(BuildContext context) {
    var theme =  Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            textAlign: TextAlign.center,
            data.suraNumber,
            style: theme.textTheme.bodyMedium,
          ),
        ),
        const SizedBox(
          height: 40.0,
          child: VerticalDivider(
            thickness: 2.0,
          ),
        ),
        Expanded(
          child: Text(
            textAlign: TextAlign.center,
            data.suraName,
            style: theme.textTheme.bodyMedium,
          ),
        ),
      ],
    );
  }
}
