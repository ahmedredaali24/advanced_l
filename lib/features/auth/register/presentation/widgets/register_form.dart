import 'package:advanced_app/features/auth/register/logic/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/helper/app_regex.dart';
import '../../../../../core/helper/spacing_helper.dart';
import '../../../../../core/widgets/custom_text_form_field.dart';
import '../../../../../core/widgets/password_validations.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isObscureText = true;
  bool isObscureTextConfirmation = true;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacter = false;
  bool hasNumber = false;
  bool hasMinLength = false;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    passwordController = context.read<RegisterViewModel>().password;
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacter =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterViewModel>().formKey,
      child: Column(
        children: [
          CustomTextFormField(
            hintText: "Name",
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return "please enter a valid Name";
              }
              return null;
            },
            controller: context.read<RegisterViewModel>().name,
          ),
          verticalSpace(18),
          CustomTextFormField(
            hintText: "Phone Number",
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return "please enter a valid Phone Number";
              }
              return null;
            },
            controller: context.read<RegisterViewModel>().phone,
          ),
          verticalSpace(18),
          CustomTextFormField(
            hintText: "Email",
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return "please enter a valid email";
              }
              return null;
            },
            controller: context.read<RegisterViewModel>().email,
          ),
          verticalSpace(18),
          CustomTextFormField(
            validator: (value) {
              if (value == null || value.trim().isEmpty
                  // ||
                  // AppRegex.isPasswordValid(value)
                  ) {
                return "please enter a valid password";
              }
              return null;
            },
            controller: context.read<RegisterViewModel>().password,
            hintText: "Password",
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            isObscureText: isObscureText,
          ),
          verticalSpace(18),
          CustomTextFormField(
            validator: (value) {
              if (value == null || value.trim().isEmpty
                  // ||
                  // AppRegex.isPasswordValid(value)
                  ) {
                return "please enter a valid password";
              }
              return null;
            },
            controller: context.read<RegisterViewModel>().passwordConfirmation,
            hintText: "passwordConfirmation",
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureTextConfirmation = !isObscureTextConfirmation;
                });
              },
              child: Icon(
                isObscureTextConfirmation
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            isObscureText: isObscureTextConfirmation,
          ),
          verticalSpace(24),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasMinLength: hasMinLength,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacter,
            hasUpperCase: hasUpperCase,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
