import 'package:advanced_app/config/theming/styles/text_styles.dart';
import 'package:flutter/material.dart';

class DoctorSpecialitySeeAll extends StatelessWidget {
  const DoctorSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Doctor Speciality",
          style: TextStyles.font18DarkBlueSemiBold,
        ),
        const Spacer(),
        Text(
          "See All",
          style: TextStyles.font12BlueRegular,
        )
      ],
    );
  }
}
