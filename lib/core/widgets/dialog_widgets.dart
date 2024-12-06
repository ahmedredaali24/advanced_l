import 'package:flutter/material.dart';

import '../utils/app_colors/app_colors.dart';

class DialogWidgets {


  static void showLoading(
      {required BuildContext context,
      required String massage,
      bool isDismissible = true}) {
    showDialog(
        barrierDismissible: isDismissible,
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Row(
              children: [
                const CircularProgressIndicator(
                  color: AppColors.primaryBlue,
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(massage)
              ],
            ),
          );
        });
  }

  static void hideLoading(BuildContext context) {
    Navigator.pop(context);
  }

  static void showMessage(
      {required BuildContext context,
      bool isDismissible = false,
      required String massage,
      String? title,
      String? posActionName,
      Function? posAction,
      String? nagActionName,
      Function? nagAction}) {
    List<Widget> actions = [];
    if (posActionName != null) {
      actions.add(
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              if (posAction != null) {
                posAction.call(context);
              }
              // posAction?.call();
            },
            child: Text(
              posActionName,
              style: const TextStyle(color: Colors.green, fontSize: 20),
            )),
      );
    }
    if (nagActionName != null) {
      actions.add(
        TextButton(
            onPressed: () {
              Navigator.pop(context);
              // if(nagAction!=null){
              //    nagAction.call();
              // }
              nagAction?.call();
            },
            child: Text(
              nagActionName,
              style: const TextStyle(color: Colors.green),
            )),
      );
    }
    showDialog(
        barrierDismissible: isDismissible,
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(massage),
            title: Text(title ?? ""),
            actions: actions,
            icon: const Icon(
              Icons.info,
              size: 100,
              color: AppColors.gray,
            ),
            contentTextStyle: Theme.of(context).textTheme.titleMedium,
          );
        });
  }
}
