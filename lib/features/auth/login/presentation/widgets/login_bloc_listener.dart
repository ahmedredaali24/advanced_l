import 'package:advanced_app/core/helper/extensions.dart';
import 'package:advanced_app/core/widgets/dialog_widgets.dart';
import 'package:advanced_app/features/auth/login/logic/cubit.dart';
import 'package:advanced_app/features/auth/login/logic/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../config/routeing/routes.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginViewModel, LoginStates>(
        listenWhen: (previous, current) =>
            current is LoginLoadingState ||
            current is LoginSuccessState ||
            current is LoginErrorState,
        listener: (context, state) {
          state.whenOrNull(
            loading: () {
              DialogWidgets.showLoading(
                  context: context, massage: "Loading....");
            },
            success: (loginResponse) {
              context
                  .read<LoginViewModel>()
                  .saveUserToken(loginResponse.userData?.token ?? "");
              context.pop;
              context.pushNamedAndRemoveUntil(Routes.homeScreen,
                  predicate: (route) => false);
            },
            error: (error) {
              context.pop();
              DialogWidgets.showMessage(
                context: context,
                massage: error,
              );
            },
          );
        },
        child: const SizedBox.shrink());
  }
}
