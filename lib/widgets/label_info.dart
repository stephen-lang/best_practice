import 'package:flutter/material.dart';
 
import '../utils/Colors.dart';

import 'icon_and_text_widget.dart';
import 'space.dart';

class LableInfo extends StatelessWidget {
  const LableInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        IconTextWidget(
            iconColor: AppColors.iconColor1,
            icons: Icons.circle_sharp,
            size: 10,
            text: "Normal"),
        const Space_me(
          heighte: 0,
        ),
        IconTextWidget(
            iconColor: AppColors.iconColor2,
            icons: Icons.location_on,
            size: 10,
            text: "1.7km"),
        const Space_me(
          heighte: 0,
        ),
        IconTextWidget(
            iconColor: AppColors.iconColor1,
            icons: Icons.access_time_rounded,
            size: 10,
            text: "32min")
      ],
    );
  }
}
