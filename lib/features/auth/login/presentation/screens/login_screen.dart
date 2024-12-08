import 'package:advanced_app/config/theming/styles/text_styles.dart';
import 'package:advanced_app/core/utils/app_colors/app_colors.dart';
import 'package:advanced_app/core/utils/strings/app_strings.dart';
import 'package:advanced_app/core/widgets/primary_button.dart';
import 'package:advanced_app/features/auth/login/logic/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helper/spacing_helper.dart';
import '../widgets/do_not_have_account_text.dart';
import '../widgets/email_and_password.dart';
import '../widgets/login_bloc_listener.dart';
import '../../../../../core/widgets/term_and_conditions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back",
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                AppStrings.loginScreenText,
                style: TextStyles.font14GrayRegular,
                maxLines: 3,
              ),
              verticalSpace(36),
              Column(
                children: [
                  const EmailAndPassword(),
                  verticalSpace(24),
                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      "Forget Password",
                      style: TextStyles.font13darkBlueRegular,
                    ),
                  ),
                  verticalSpace(40),
                  PrimaryButton(
                    height: 52.h,
                    width: 327.w,
                    textStyle: TextStyles.fontPrimaryButton,
                    onTap: () {
                      validateThenDoLogin(context);
                    },
                    text: "Login",
                    bgColor: AppColors.primaryBlue,
                    borderRadius: 16.r,
                  ),
                  verticalSpace(16),
                  const TermAndConditions(),
                  verticalSpace(60),
                  const DoNotHaveAccountText(),
                  const LoginBlocListener(),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void validateThenDoLogin(BuildContext context) {

    if(context.read<LoginViewModel>().formKey.currentState!.validate()){
      context.read<LoginViewModel>().emitLoginState();
    }

  }
}
