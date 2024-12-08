import 'package:advanced_app/config/theming/styles/text_styles.dart';
import 'package:advanced_app/core/helper/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../config/routeing/routes.dart';

class DoNotHaveAccountText extends StatelessWidget {
  const DoNotHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: [
        TextSpan(
            text: "Don't have an account ? ",
            style: TextStyles.font11BlackForSmallTextRegular),
        TextSpan(
            text: "Sign Up",
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.registerScreen);
              }),
      ]),
    );
  }
}
