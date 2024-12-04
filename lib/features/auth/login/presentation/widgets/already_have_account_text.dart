import 'package:advanced_app/config/theming/styles/text_styles.dart';
import 'package:flutter/material.dart';

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
              text: "Already have an account yet? ",
              style:TextStyles.font11BlackForSmallTextRegular

            ),
            TextSpan(
                text: "Sign Up",
                style:TextStyles.font13BlueSemiBold

            ),
          ]
      ),
    );
  }
}
