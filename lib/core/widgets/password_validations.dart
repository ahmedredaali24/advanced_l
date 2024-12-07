import 'package:advanced_app/core/helpper/spacing_helper.dart';
import 'package:advanced_app/core/utils/app_colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../config/theming/styles/text_styles.dart';

class PasswordValidations extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasSpecialCharacter;
  final bool hasNumber;
  final bool hasMinLength;

  const PasswordValidations(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasSpecialCharacter,
      required this.hasNumber,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidation("At least 1 lowercase letter", hasLowerCase),
        verticalSpace(2),
        buildValidation("At least 1 uppercase letter", hasUpperCase),
        verticalSpace(2),
        buildValidation(
            "At least 1 special character letter", hasSpecialCharacter),
        verticalSpace(2),
        buildValidation("At least 1  number letter", hasNumber),
        verticalSpace(2),
        buildValidation("At least 8 character long", hasMinLength),
      ],
    );
  }

  Widget buildValidation(String text, bool hasValidation) {
    return Row(
      children: [
        CircleAvatar(
          radius: 2.5.r,
          backgroundColor: AppColors.gray,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font13darkBlueRegular.copyWith(
              decoration: hasValidation ? TextDecoration.lineThrough : null,
              decorationColor: Colors.green,
              decorationThickness: 2,
              color:
                  hasValidation ? AppColors.primaryBlue : AppColors.darkBlue),
        )
      ],
    );
  }
}
