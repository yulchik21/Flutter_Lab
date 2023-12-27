import 'package:effective_flutter_lab/components/custom_list_tile.dart';
import 'package:effective_flutter_lab/components/title_subtitle.dart';
import 'package:effective_flutter_lab/data/data.dart';
import 'package:flutter/material.dart';

class TariffsLimitsList extends StatelessWidget {
  const TariffsLimitsList(
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleSubtitle(
          title: MyStrings.title2,
          subtitle: MyStrings.subtitle2,
        ),
        CustomListTile(
            data: MyData.tariffsAndLimitsList[0]
        ),
        CustomListTile(
            data: MyData.tariffsAndLimitsList[1]
        ),
        CustomListTile(
            data: MyData.tariffsAndLimitsList[2]
        ),
      ],
    );
  }
}
