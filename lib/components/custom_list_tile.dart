import 'package:effective_flutter_lab/data/data.dart';
import 'package:effective_flutter_lab/models/custom_tile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({super.key, required this.data});

  final CustomTileModel data;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {},
      child: SizedBox(
        height: 64,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    padding: const EdgeInsets.only(right: 12),
                    child: SvgPicture.asset(
                      data.ico,
                      height: 36,
                      width: 36,
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(data.title, style: MyTextStyles.customTileTitle),
                    data.subtitle != ""
                        ? Text(data.subtitle, style: MyTextStyles.customTileSubtitle)
                        : const SizedBox(
                            height: 0,
                          ),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(right: 8),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
                size: 14,
              ),
            )
          ],
        ),
      ),
    );
  }
}
