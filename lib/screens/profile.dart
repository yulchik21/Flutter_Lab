import 'package:effective_flutter_lab/components/horizontal_card_list.dart';
import 'package:effective_flutter_lab/components/tariffs_limits_list.dart';
import 'package:effective_flutter_lab/components/title_subtitle.dart';
import 'package:effective_flutter_lab/components/wrap_chips.dart';
import 'package:effective_flutter_lab/data/data.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: profilePage());
  }

  Widget profilePage() {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: ListView(
        padding: EdgeInsets.zero,
        children: const [
          SizedBox(height: 30),
          TitleSubtitle(
            title: MyStrings.title1,
            subtitle: MyStrings.subtitle1,
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 32), child: HorizontalCardList()),
          Padding(
            padding: EdgeInsets.only(bottom: 32),
            child: TariffsLimitsList(),
          ),
          TitleSubtitle(
            title: MyStrings.title3,
            subtitle: MyStrings.subtitle3,
          ),
          Padding(
              padding: EdgeInsets.only(bottom: 32),
              child: WrapChips()
          ),
        ],
      ),
    );
  }
}
