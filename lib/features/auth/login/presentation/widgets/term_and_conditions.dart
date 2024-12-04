import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theming/styles/text_styles.dart';

class TermAndConditions extends StatelessWidget {
  const TermAndConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: "By logging, you agree to our ",
            style: TextStyles.font11GrayForSmallTextRegular),
        TextSpan(
            text: "Terms & Conditions ",
            style: TextStyles.font11BlackForSmallTextRegular),
        TextSpan(
            text: "and ",
            style: TextStyles.font11GrayForSmallTextRegular
                .copyWith(height: 1.1.h)),
        TextSpan(
            text: "PrivacyPolicy",
            style: TextStyles.font11BlackForSmallTextRegular),
      ]),
    );
  }
}
