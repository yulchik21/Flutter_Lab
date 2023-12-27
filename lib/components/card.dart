import 'package:effective_flutter_lab/data/data.dart';
import 'package:effective_flutter_lab/models/subscription_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardRectangle extends StatelessWidget {
  const CardRectangle(
      {super.key, required this.data});

  final SubscriptionModel data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8, bottom: 10),
      child: TextButton(
        style: ElevatedButton.styleFrom(
            elevation: 10,
            fixedSize: const Size(216, 130),
            backgroundColor: Colors.white,
            foregroundColor: Colors.grey,
            shadowColor: Colors.black.withAlpha(90),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))
        ),
        onPressed: () {},
        //padding: EdgeInsets.all(12),
        //margin: EdgeInsets.only(right: 8),
        child: Padding(
          padding: const EdgeInsets.only(left: 12, top: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    data.ico,
                    height: 36,
                    width: 36,
                  ),
                  const SizedBox(width: 8),
                  Text(
                    data.name,
                    style: MyTextStyles.cardName
                  )
                ],
              ),
              const SizedBox(height: 22),
              Text(
                data.title,
                style: MyTextStyles.cardTitle
              ),
              Text(
                data.subtitle,
                style: MyTextStyles.cardSubtitle
              )
            ],
          ),
        ),
      ),
    );

  }
}
