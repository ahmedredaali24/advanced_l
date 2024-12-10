import 'package:advanced_app/core/helper/extensions.dart';
import 'package:advanced_app/core/utils/app_colors/app_colors.dart';
import 'package:advanced_app/core/widgets/dialog_widgets.dart';
import 'package:advanced_app/features/auth/login/logic/cubit.dart';
import 'package:advanced_app/features/auth/login/logic/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../config/routeing/routes.dart';
import '../../../../../config/theming/styles/text_styles.dart';
import '../../../../../core/networking/apis/api_error_model.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginViewModel, LoginStates>(
        // listenWhen: (previous, current) =>
        //     current is LoginLoadingState ||
        //     current is LoginSuccessState ||
        //     current is LoginErrorState,
        listener: (context, state) {
          state.whenOrNull(
            loading: () {
              showDialog(
                context: context,
                builder: (context) => const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.primaryBlue,
                  ),
                ),
              );
            },
            success: (loginResponse) {
              context.pop();
              // context
              //     .read<LoginViewModel>()
              //     .saveUserToken(loginResponse.userData?.token ?? "");

              context.pushNamedAndRemoveUntil(Routes.homeScreen,
                  predicate: (route) => false);
            },
            error: (apoErrorModel) => setupErrorState(context, apoErrorModel),
          );
        },
        child: const SizedBox.shrink());
  }

  void setupErrorState(BuildContext context, ApiErrorModel apiErrorModel) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          apiErrorModel.getAllErrorMessages(),
          style: TextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: TextStyles.font14BlueSemiBold,
            ),
          ),
        ],
      ),
    );
  }
}
