import 'package:flutter/material.dart';

import 'package:demo/constants.dart';

class GenderTileWidget extends StatelessWidget {
  final bool isMale;
  final String text;
  final IconData icon;
  final Function onTapTile;
  const GenderTileWidget({
    super.key,
    required this.isMale,
    required this.onTapTile,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTapTile(),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration:
            isMale ? kSelectedTileBorderDecoration : kTileBorderDecoration,
        child: Column(
          children: [
            Icon(
              icon,
              size: 50,
              color: kActiveTextColor,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 24,
                color: kActiveTextColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
