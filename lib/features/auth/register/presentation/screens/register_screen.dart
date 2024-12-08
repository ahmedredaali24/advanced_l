import 'package:advanced_app/features/auth/register/logic/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../config/theming/styles/text_styles.dart';
import '../../../../../core/helper/spacing_helper.dart';
import '../../../../../core/utils/app_colors/app_colors.dart';
import '../../../../../core/utils/strings/app_strings.dart';
import '../../../../../core/widgets/primary_button.dart';
import '../../../../../core/widgets/term_and_conditions.dart';
import '../widgets/already_have_account_text.dart';
import '../widgets/register_bloc_listener.dart';
import '../widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

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
                AppStrings.registerScreenText,
                style: TextStyles.font14GrayRegular,
                maxLines: 3,
              ),
              verticalSpace(36),
              Column(
                children: [
                  const RegisterForm(),
                  verticalSpace(24),
                  PrimaryButton(
                    height: 52.h,
                    width: 327.w,
                    textStyle: TextStyles.fontPrimaryButton,
                    onTap: () {
                      validateThenDoLogin(context);
                    },
                    text: "Create Account",
                    bgColor: AppColors.primaryBlue,
                    borderRadius: 16.r,
                  ),
                  verticalSpace(16),
                  const TermAndConditions(),
                  verticalSpace(10),
                  const AlreadyHaveAccountText(),
                  verticalSpace(30),
                  const RegisterBlocListener(),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<RegisterViewModel>().formKey.currentState!.validate()) {
      context.read<RegisterViewModel>().emitRegisterState();
    }
  }
}
