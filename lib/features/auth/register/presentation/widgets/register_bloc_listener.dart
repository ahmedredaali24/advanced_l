import 'package:advanced_app/core/helper/extensions.dart';
import 'package:advanced_app/features/auth/register/logic/cubit.dart';
import 'package:advanced_app/features/auth/register/logic/states_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../config/routeing/routes.dart';
import '../../../../../core/widgets/dialog_widgets.dart';
class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterViewModel, RegisterStates>(
        listenWhen: (previous, current) =>
        current is RegisterLoadingState ||
            current is RegisterSuccessState ||
            current is RegisterErrorState,
        listener: (context, state) {
          state.whenOrNull(
            loading: () {
              DialogWidgets.showLoading(
                  context: context, massage: "Loading....");
            },
            success: (loginResponse) {
              context.pop;
              context.pushNamed(Routes.loginScreen);
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
