import 'package:effective_flutter_lab/components/card.dart';
import 'package:effective_flutter_lab/data/data.dart';
import 'package:flutter/material.dart';

class HorizontalCardList extends StatelessWidget {
  const HorizontalCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: MyData.subscriptions.length,
        itemBuilder: (context, index) {
          return CardRectangle(data: MyData.subscriptions[index]);
        },
      ),
    );
  }
}
