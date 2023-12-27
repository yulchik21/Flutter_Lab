import 'package:effective_flutter_lab/themes/colors.dart';
import 'package:effective_flutter_lab/data/data.dart';
import 'package:flutter/material.dart';

class WrapChips extends StatefulWidget {
  const WrapChips({super.key});

  @override
  State<WrapChips> createState() => _TagsBlockState();
}

class _TagsBlockState extends State<WrapChips> {

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8.0,
      children: List<Widget>.generate(
        MyData.tags.length,
            (int index) => Builder(
          builder: (BuildContext context) {
            return FilterChip(
              backgroundColor: MyColors.chipBackground,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              side: BorderSide.none,
              label: Text(
                MyData.tags.keys.elementAt(index),
                style: MyTextStyles.chip
              ),
              selected: MyData.tags.values.elementAt(index),
              onSelected: (bool selected) {
                setState(() {
                  MyData.tags[MyData.tags.keys.elementAt(index)] = selected;
                });
              },
            );
          },
        ),
      ),
    );
  }
}