import 'package:advanced_app/config/theming/styles/text_styles.dart';
import 'package:advanced_app/core/helpper/spacing_helper.dart';
import 'package:advanced_app/core/utils/app_colors/app_colors.dart';
import 'package:advanced_app/core/utils/strings/app_strings.dart';
import 'package:advanced_app/core/widgets/primary_button.dart';
import 'package:advanced_app/features/auth/login/presentation/widgets/already_have_account_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../../core/widgets/PrimaryTextButton.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../widgets/term_and_conditions.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

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
              Form(
                  key: formKey,
                  child: Column(
                    children: [
                      const CustomTextFormField(hintText: "Email"),
                      verticalSpace(18),
                      CustomTextFormField(
                        hintText: "Password",
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                          ),
                        ),
                        isObscureText: isObscureText,
                      ),
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
                        onTap: () {},
                        text: "Login",
                        bgColor: AppColors.primaryBlue,
                        borderRadius: 16.r,
                      ),
                      verticalSpace(16),
                      const TermAndConditions(),
                      verticalSpace(60),
                      const AlreadyHaveAccountText(),

                    ],
                  )),
            ],
          ),
        ),
      ),
    ));
  }
}
