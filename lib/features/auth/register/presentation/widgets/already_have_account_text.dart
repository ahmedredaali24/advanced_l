import 'package:advanced_app/core/helper/extensions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../config/routeing/routes.dart';
import '../../../../../config/theming/styles/text_styles.dart';
class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          children:
          [
            TextSpan(
                text: "Already have an account ? ",
                style:TextStyles.font11BlackForSmallTextRegular

            ),
            TextSpan(
                text: "Log in",
                style:TextStyles.font13BlueSemiBold,
              recognizer: TapGestureRecognizer()..onTap=(){
                  context.pushReplacementNamed(Routes.loginScreen);
              }

            ),
          ]
      ),
    );
  }
}
